
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_entry {int dummy; } ;
struct vsp1_dl_body_pool {size_t size; unsigned int max_entries; int free; scalar_t__ mem; scalar_t__ entries; scalar_t__ dma; struct vsp1_dl_body_pool* pool; struct vsp1_dl_body_pool* bodies; int lock; struct vsp1_device* vsp1; } ;
struct vsp1_dl_body {size_t size; unsigned int max_entries; int free; scalar_t__ mem; scalar_t__ entries; scalar_t__ dma; struct vsp1_dl_body* pool; struct vsp1_dl_body* bodies; int lock; struct vsp1_device* vsp1; } ;
struct vsp1_device {int bus_master; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ dma_alloc_wc (int ,size_t,scalar_t__*,int ) ;
 struct vsp1_dl_body_pool* kcalloc (unsigned int,int,int ) ;
 int kfree (struct vsp1_dl_body_pool*) ;
 struct vsp1_dl_body_pool* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

struct vsp1_dl_body_pool *
vsp1_dl_body_pool_create(struct vsp1_device *vsp1, unsigned int num_bodies,
    unsigned int num_entries, size_t extra_size)
{
 struct vsp1_dl_body_pool *pool;
 size_t dlb_size;
 unsigned int i;

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return ((void*)0);

 pool->vsp1 = vsp1;







 dlb_size = num_entries * sizeof(struct vsp1_dl_entry) + extra_size;
 pool->size = dlb_size * num_bodies;

 pool->bodies = kcalloc(num_bodies, sizeof(*pool->bodies), GFP_KERNEL);
 if (!pool->bodies) {
  kfree(pool);
  return ((void*)0);
 }

 pool->mem = dma_alloc_wc(vsp1->bus_master, pool->size, &pool->dma,
     GFP_KERNEL);
 if (!pool->mem) {
  kfree(pool->bodies);
  kfree(pool);
  return ((void*)0);
 }

 spin_lock_init(&pool->lock);
 INIT_LIST_HEAD(&pool->free);

 for (i = 0; i < num_bodies; ++i) {
  struct vsp1_dl_body *dlb = &pool->bodies[i];

  dlb->pool = pool;
  dlb->max_entries = num_entries;

  dlb->dma = pool->dma + i * dlb_size;
  dlb->entries = pool->mem + i * dlb_size;

  list_add_tail(&dlb->free, &pool->free);
 }

 return pool;
}
