
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dummy; } ;
struct ubi_eba_table {struct ubi_eba_table* entries; int pnum; } ;


 int ENOMEM ;
 struct ubi_eba_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int UBI_LEB_UNMAPPED ;
 int kfree (struct ubi_eba_table*) ;
 struct ubi_eba_table* kmalloc_array (int,int,int ) ;
 struct ubi_eba_table* kzalloc (int,int ) ;

struct ubi_eba_table *ubi_eba_create_table(struct ubi_volume *vol,
        int nentries)
{
 struct ubi_eba_table *tbl;
 int err = -ENOMEM;
 int i;

 tbl = kzalloc(sizeof(*tbl), GFP_KERNEL);
 if (!tbl)
  return ERR_PTR(-ENOMEM);

 tbl->entries = kmalloc_array(nentries, sizeof(*tbl->entries),
         GFP_KERNEL);
 if (!tbl->entries)
  goto err;

 for (i = 0; i < nentries; i++)
  tbl->entries[i].pnum = UBI_LEB_UNMAPPED;

 return tbl;

err:
 kfree(tbl->entries);
 kfree(tbl);

 return ERR_PTR(err);
}
