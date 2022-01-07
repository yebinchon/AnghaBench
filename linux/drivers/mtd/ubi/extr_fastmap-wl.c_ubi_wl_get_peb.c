
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_fm_pool {scalar_t__ used; scalar_t__ size; int* pebs; } ;
struct ubi_device {int wl_lock; int * lookuptbl; int fm_eba_sem; struct ubi_fm_pool fm_wl_pool; struct ubi_fm_pool fm_pool; } ;


 int ENOSPC ;
 int down_read (int *) ;
 int produce_free_peb (struct ubi_device*) ;
 int prot_queue_add (struct ubi_device*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int ubi_err (struct ubi_device*,char*) ;
 int ubi_msg (struct ubi_device*,char*,int) ;
 int ubi_update_fastmap (struct ubi_device*) ;
 int up_read (int *) ;

int ubi_wl_get_peb(struct ubi_device *ubi)
{
 int ret, attempts = 0;
 struct ubi_fm_pool *pool = &ubi->fm_pool;
 struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;

again:
 down_read(&ubi->fm_eba_sem);
 spin_lock(&ubi->wl_lock);



 if (pool->used == pool->size || wl_pool->used == wl_pool->size) {
  spin_unlock(&ubi->wl_lock);
  up_read(&ubi->fm_eba_sem);
  ret = ubi_update_fastmap(ubi);
  if (ret) {
   ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
   down_read(&ubi->fm_eba_sem);
   return -ENOSPC;
  }
  down_read(&ubi->fm_eba_sem);
  spin_lock(&ubi->wl_lock);
 }

 if (pool->used == pool->size) {
  spin_unlock(&ubi->wl_lock);
  attempts++;
  if (attempts == 10) {
   ubi_err(ubi, "Unable to get a free PEB from user WL pool");
   ret = -ENOSPC;
   goto out;
  }
  up_read(&ubi->fm_eba_sem);
  ret = produce_free_peb(ubi);
  if (ret < 0) {
   down_read(&ubi->fm_eba_sem);
   goto out;
  }
  goto again;
 }

 ubi_assert(pool->used < pool->size);
 ret = pool->pebs[pool->used++];
 prot_queue_add(ubi, ubi->lookuptbl[ret]);
 spin_unlock(&ubi->wl_lock);
out:
 return ret;
}
