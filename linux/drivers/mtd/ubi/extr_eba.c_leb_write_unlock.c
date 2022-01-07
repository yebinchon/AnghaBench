
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ltree_entry {scalar_t__ users; int rb; int mutex; } ;
struct ubi_device {int ltree_lock; int ltree; } ;


 int kfree (struct ubi_ltree_entry*) ;
 struct ubi_ltree_entry* ltree_lookup (struct ubi_device*,int,int) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int up_write (int *) ;

__attribute__((used)) static void leb_write_unlock(struct ubi_device *ubi, int vol_id, int lnum)
{
 struct ubi_ltree_entry *le;

 spin_lock(&ubi->ltree_lock);
 le = ltree_lookup(ubi, vol_id, lnum);
 le->users -= 1;
 ubi_assert(le->users >= 0);
 up_write(&le->mutex);
 if (le->users == 0) {
  rb_erase(&le->rb, &ubi->ltree);
  kfree(le);
 }
 spin_unlock(&ubi->ltree_lock);
}
