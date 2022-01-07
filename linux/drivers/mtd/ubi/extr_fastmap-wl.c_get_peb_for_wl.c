
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int dummy; } ;
struct ubi_fm_pool {scalar_t__ used; scalar_t__ size; int* pebs; } ;
struct ubi_device {int fm_work_scheduled; struct ubi_wl_entry** lookuptbl; int fm_work; int fm_eba_sem; struct ubi_fm_pool fm_wl_pool; } ;


 int rwsem_is_locked (int *) ;
 int schedule_work (int *) ;
 int ubi_assert (int ) ;

__attribute__((used)) static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
{
 struct ubi_fm_pool *pool = &ubi->fm_wl_pool;
 int pnum;

 ubi_assert(rwsem_is_locked(&ubi->fm_eba_sem));

 if (pool->used == pool->size) {



  if (!ubi->fm_work_scheduled) {
   ubi->fm_work_scheduled = 1;
   schedule_work(&ubi->fm_work);
  }
  return ((void*)0);
 }

 pnum = pool->pebs[pool->used++];
 return ubi->lookuptbl[pnum];
}
