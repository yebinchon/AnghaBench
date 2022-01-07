
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct q_desc_mem {int * base; int * unalign_base; int dma; int size; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void nicvf_free_q_desc_mem(struct nicvf *nic, struct q_desc_mem *dmem)
{
 if (!dmem)
  return;

 dma_free_coherent(&nic->pdev->dev, dmem->size,
     dmem->unalign_base, dmem->dma);
 dmem->unalign_base = ((void*)0);
 dmem->base = ((void*)0);
}
