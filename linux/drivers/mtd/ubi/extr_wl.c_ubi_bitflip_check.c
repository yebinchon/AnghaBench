
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb; } ;
struct ubi_wl_entry {TYPE_1__ u; int pnum; } ;
struct ubi_device {int peb_count; int work_sem; int wl_lock; int free_count; int free; int scrub; int used; struct ubi_wl_entry** lookuptbl; int buf_mutex; int peb_size; int peb_buf; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EUCLEAN ;
 int UBI_IO_BITFLIPS ;
 int UBI_UNKNOWN ;
 int down_write (int *) ;
 int ensure_wear_leveling (struct ubi_device*,int) ;
 scalar_t__ in_pq (struct ubi_device*,struct ubi_wl_entry*) ;
 scalar_t__ in_wl_tree (struct ubi_wl_entry*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prot_queue_del (struct ubi_device*,int ) ;
 int rb_erase (int *,int *) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int ,int ,int,int) ;
 int scrub_possible (struct ubi_device*,struct ubi_wl_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_io_read (struct ubi_device*,int ,int,int ,int ) ;
 int up_write (int *) ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;

int ubi_bitflip_check(struct ubi_device *ubi, int pnum, int force)
{
 int err = 0;
 struct ubi_wl_entry *e;

 if (pnum < 0 || pnum >= ubi->peb_count) {
  err = -EINVAL;
  goto out;
 }





 down_write(&ubi->work_sem);





 spin_lock(&ubi->wl_lock);
 e = ubi->lookuptbl[pnum];
 if (!e) {
  spin_unlock(&ubi->wl_lock);
  err = -ENOENT;
  goto out_resume;
 }




 if (!scrub_possible(ubi, e)) {
  spin_unlock(&ubi->wl_lock);
  err = -EBUSY;
  goto out_resume;
 }
 spin_unlock(&ubi->wl_lock);

 if (!force) {
  mutex_lock(&ubi->buf_mutex);
  err = ubi_io_read(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
  mutex_unlock(&ubi->buf_mutex);
 }

 if (force || err == UBI_IO_BITFLIPS) {



  spin_lock(&ubi->wl_lock);





  e = ubi->lookuptbl[pnum];
  if (!e) {
   spin_unlock(&ubi->wl_lock);
   err = -ENOENT;
   goto out_resume;
  }




  if (!scrub_possible(ubi, e)) {
   spin_unlock(&ubi->wl_lock);
   err = -EBUSY;
   goto out_resume;
  }

  if (in_pq(ubi, e)) {
   prot_queue_del(ubi, e->pnum);
   wl_tree_add(e, &ubi->scrub);
   spin_unlock(&ubi->wl_lock);

   err = ensure_wear_leveling(ubi, 1);
  } else if (in_wl_tree(e, &ubi->used)) {
   rb_erase(&e->u.rb, &ubi->used);
   wl_tree_add(e, &ubi->scrub);
   spin_unlock(&ubi->wl_lock);

   err = ensure_wear_leveling(ubi, 1);
  } else if (in_wl_tree(e, &ubi->free)) {
   rb_erase(&e->u.rb, &ubi->free);
   ubi->free_count--;
   spin_unlock(&ubi->wl_lock);





   err = schedule_erase(ubi, e, UBI_UNKNOWN, UBI_UNKNOWN,
          force ? 0 : 1, 1);
  } else {
   spin_unlock(&ubi->wl_lock);
   err = -EAGAIN;
  }

  if (!err && !force)
   err = -EUCLEAN;
 } else {
  err = 0;
 }

out_resume:
 up_write(&ubi->work_sem);
out:

 return err;
}
