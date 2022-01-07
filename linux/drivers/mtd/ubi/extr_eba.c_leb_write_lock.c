
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ltree_entry {int mutex; } ;
struct ubi_device {int dummy; } ;


 scalar_t__ IS_ERR (struct ubi_ltree_entry*) ;
 int PTR_ERR (struct ubi_ltree_entry*) ;
 int down_write (int *) ;
 struct ubi_ltree_entry* ltree_add_entry (struct ubi_device*,int,int) ;

__attribute__((used)) static int leb_write_lock(struct ubi_device *ubi, int vol_id, int lnum)
{
 struct ubi_ltree_entry *le;

 le = ltree_add_entry(ubi, vol_id, lnum);
 if (IS_ERR(le))
  return PTR_ERR(le);
 down_write(&le->mutex);
 return 0;
}
