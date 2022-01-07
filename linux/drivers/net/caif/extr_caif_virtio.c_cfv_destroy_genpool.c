
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cfv_info {int * genpool; int reserved_size; int reserved_mem; int alloc_dma; scalar_t__ alloc_addr; int allocsz; TYPE_3__* vdev; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {int parent; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int gen_pool_destroy (int *) ;
 int gen_pool_free (int *,int ,int ) ;

__attribute__((used)) static void cfv_destroy_genpool(struct cfv_info *cfv)
{
 if (cfv->alloc_addr)
  dma_free_coherent(cfv->vdev->dev.parent->parent,
      cfv->allocsz, cfv->alloc_addr,
      cfv->alloc_dma);

 if (!cfv->genpool)
  return;
 gen_pool_free(cfv->genpool, cfv->reserved_mem,
        cfv->reserved_size);
 gen_pool_destroy(cfv->genpool);
 cfv->genpool = ((void*)0);
}
