
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int zone_count; struct sm_ftl* cache_data; struct sm_ftl* zones; struct sm_ftl* cis_buffer; int free_sectors; struct sm_ftl* lba_to_phys_table; int initialized; int * trans; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;


 int del_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 int kfifo_free (int *) ;
 int kfree (struct sm_ftl*) ;
 int sm_delete_sysfs_attributes (struct sm_ftl*) ;

__attribute__((used)) static void sm_remove_dev(struct mtd_blktrans_dev *dev)
{
 struct sm_ftl *ftl = dev->priv;
 int i;

 del_mtd_blktrans_dev(dev);
 ftl->trans = ((void*)0);

 for (i = 0 ; i < ftl->zone_count; i++) {

  if (!ftl->zones[i].initialized)
   continue;

  kfree(ftl->zones[i].lba_to_phys_table);
  kfifo_free(&ftl->zones[i].free_sectors);
 }

 sm_delete_sysfs_attributes(ftl);
 kfree(ftl->cis_buffer);
 kfree(ftl->zones);
 kfree(ftl->cache_data);
 kfree(ftl);
}
