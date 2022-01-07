
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int spec_minor; int spec_major; int version; } ;
struct kempld_device_data {TYPE_2__* dev; TYPE_1__ info; int lock; int io_index; int io_data; } ;
struct TYPE_4__ {int kobj; } ;


 int ENODEV ;
 int KEMPLD_MUTEX_KEY ;
 int dev_info (TYPE_2__*,char*,int ,int ,int ,int ) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;
 int kempld_get_info (struct kempld_device_data*) ;
 int kempld_get_type_string (struct kempld_device_data*) ;
 int kempld_register_cells (struct kempld_device_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pld_attr_group ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int kempld_detect_device(struct kempld_device_data *pld)
{
 u8 index_reg;
 int ret;

 mutex_lock(&pld->lock);


 index_reg = ioread8(pld->io_index);
 if (index_reg == 0xff && ioread8(pld->io_data) == 0xff) {
  mutex_unlock(&pld->lock);
  return -ENODEV;
 }


 if (!(index_reg & KEMPLD_MUTEX_KEY)) {
  iowrite8(KEMPLD_MUTEX_KEY, pld->io_index);

  iowrite8(KEMPLD_MUTEX_KEY, pld->io_index);
 }

 mutex_unlock(&pld->lock);

 ret = kempld_get_info(pld);
 if (ret)
  return ret;

 dev_info(pld->dev, "Found Kontron PLD - %s (%s), spec %d.%d\n",
   pld->info.version, kempld_get_type_string(pld),
   pld->info.spec_major, pld->info.spec_minor);

 ret = sysfs_create_group(&pld->dev->kobj, &pld_attr_group);
 if (ret)
  return ret;

 ret = kempld_register_cells(pld);
 if (ret)
  sysfs_remove_group(&pld->dev->kobj, &pld_attr_group);

 return ret;
}
