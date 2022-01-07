
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rb; } ;
struct ubi_wl_entry {int pnum; TYPE_1__ u; } ;
struct ubi_fm_pool {size_t size; size_t max_size; scalar_t__ used; int * pebs; } ;
struct TYPE_6__ {int rb_node; } ;
struct ubi_device {int free_count; int beb_rsvd_pebs; int wl_lock; TYPE_2__ free; struct ubi_fm_pool fm_pool; struct ubi_fm_pool fm_wl_pool; } ;


 int WL_FREE_MAX_DIFF ;
 struct ubi_wl_entry* find_wl_entry (struct ubi_device*,TYPE_2__*,int ) ;
 int rb_erase (int *,TYPE_2__*) ;
 int return_unused_pool_pebs (struct ubi_device*,struct ubi_fm_pool*) ;
 int self_check_in_wl_tree (struct ubi_device*,struct ubi_wl_entry*,TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ubi_wl_entry* wl_get_wle (struct ubi_device*) ;

void ubi_refill_pools(struct ubi_device *ubi)
{
 struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
 struct ubi_fm_pool *pool = &ubi->fm_pool;
 struct ubi_wl_entry *e;
 int enough;

 spin_lock(&ubi->wl_lock);

 return_unused_pool_pebs(ubi, wl_pool);
 return_unused_pool_pebs(ubi, pool);

 wl_pool->size = 0;
 pool->size = 0;

 for (;;) {
  enough = 0;
  if (pool->size < pool->max_size) {
   if (!ubi->free.rb_node)
    break;

   e = wl_get_wle(ubi);
   if (!e)
    break;

   pool->pebs[pool->size] = e->pnum;
   pool->size++;
  } else
   enough++;

  if (wl_pool->size < wl_pool->max_size) {
   if (!ubi->free.rb_node ||
      (ubi->free_count - ubi->beb_rsvd_pebs < 5))
    break;

   e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
   self_check_in_wl_tree(ubi, e, &ubi->free);
   rb_erase(&e->u.rb, &ubi->free);
   ubi->free_count--;

   wl_pool->pebs[wl_pool->size] = e->pnum;
   wl_pool->size++;
  } else
   enough++;

  if (enough == 2)
   break;
 }

 wl_pool->used = 0;
 pool->used = 0;

 spin_unlock(&ubi->wl_lock);
}
