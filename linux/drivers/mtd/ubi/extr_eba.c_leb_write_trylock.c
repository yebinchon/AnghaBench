
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ltree_entry {scalar_t__ users; int rb; int mutex; } ;
struct ubi_device {int ltree_lock; int ltree; } ;


 scalar_t__ IS_ERR (struct ubi_ltree_entry*) ;
 int PTR_ERR (struct ubi_ltree_entry*) ;
 scalar_t__ down_write_trylock (int *) ;
 int kfree (struct ubi_ltree_entry*) ;
 struct ubi_ltree_entry* ltree_add_entry (struct ubi_device*,int,int) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;

__attribute__((used)) static int leb_write_trylock(struct ubi_device *ubi, int vol_id, int lnum)
{
 struct ubi_ltree_entry *le;

 le = ltree_add_entry(ubi, vol_id, lnum);
 if (IS_ERR(le))
  return PTR_ERR(le);
 if (down_write_trylock(&le->mutex))
  return 0;


 spin_lock(&ubi->ltree_lock);
 le->users -= 1;
 ubi_assert(le->users >= 0);
 if (le->users == 0) {
  rb_erase(&le->rb, &ubi->ltree);
  kfree(le);
 }
 spin_unlock(&ubi->ltree_lock);

 return 1;
}
