
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dev; int reboot_notifier; scalar_t__ _reboot; } ;


 int del_mtd_device (struct mtd_info*) ;
 int del_mtd_partitions (struct mtd_info*) ;
 int device_is_registered (int *) ;
 int unregister_reboot_notifier (int *) ;

int mtd_device_unregister(struct mtd_info *master)
{
 int err;

 if (master->_reboot)
  unregister_reboot_notifier(&master->reboot_notifier);

 err = del_mtd_partitions(master);
 if (err)
  return err;

 if (!device_is_registered(&master->dev))
  return 0;

 return del_mtd_device(master);
}
