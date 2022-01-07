
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnad {TYPE_1__* pcidev; } ;
struct bna_mem_info {int num; scalar_t__ mem_type; TYPE_2__* mdl; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {struct TYPE_5__* kva; int len; int dma; } ;
struct TYPE_4__ {int dev; } ;


 int BNA_GET_DMA_ADDR (int *,int ) ;
 scalar_t__ BNA_MEM_T_DMA ;
 int dma_free_coherent (int *,int ,TYPE_2__*,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void
bnad_mem_free(struct bnad *bnad,
       struct bna_mem_info *mem_info)
{
 int i;
 dma_addr_t dma_pa;

 if (mem_info->mdl == ((void*)0))
  return;

 for (i = 0; i < mem_info->num; i++) {
  if (mem_info->mdl[i].kva != ((void*)0)) {
   if (mem_info->mem_type == BNA_MEM_T_DMA) {
    BNA_GET_DMA_ADDR(&(mem_info->mdl[i].dma),
      dma_pa);
    dma_free_coherent(&bnad->pcidev->dev,
        mem_info->mdl[i].len,
        mem_info->mdl[i].kva, dma_pa);
   } else
    kfree(mem_info->mdl[i].kva);
  }
 }
 kfree(mem_info->mdl);
 mem_info->mdl = ((void*)0);
}
