
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int dummy; } ;
struct ubi_fm_pool {int used; int size; size_t* pebs; } ;
struct ubi_device {int free_count; int free; struct ubi_wl_entry** lookuptbl; } ;


 int wl_tree_add (struct ubi_wl_entry*,int *) ;

__attribute__((used)) static void return_unused_pool_pebs(struct ubi_device *ubi,
        struct ubi_fm_pool *pool)
{
 int i;
 struct ubi_wl_entry *e;

 for (i = pool->used; i < pool->size; i++) {
  e = ubi->lookuptbl[pool->pebs[i]];
  wl_tree_add(e, &ubi->free);
  ubi->free_count++;
 }
}
