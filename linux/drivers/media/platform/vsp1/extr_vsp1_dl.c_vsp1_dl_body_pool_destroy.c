
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_body_pool {struct vsp1_dl_body_pool* bodies; int dma; scalar_t__ mem; int size; TYPE_1__* vsp1; } ;
struct TYPE_2__ {int bus_master; } ;


 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int kfree (struct vsp1_dl_body_pool*) ;

void vsp1_dl_body_pool_destroy(struct vsp1_dl_body_pool *pool)
{
 if (!pool)
  return;

 if (pool->mem)
  dma_free_wc(pool->vsp1->bus_master, pool->size, pool->mem,
       pool->dma);

 kfree(pool->bodies);
 kfree(pool);
}
