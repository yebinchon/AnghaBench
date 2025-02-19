
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbus_device_id {scalar_t__ device; } ;
struct mbus_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct mbus_device_id* id_table; } ;


 struct mbus_device* dev_to_mbus (struct device*) ;
 TYPE_1__* drv_to_mbus (struct device_driver*) ;
 scalar_t__ mbus_id_match (struct mbus_device*,struct mbus_device_id const*) ;

__attribute__((used)) static int mbus_dev_match(struct device *dv, struct device_driver *dr)
{
 unsigned int i;
 struct mbus_device *dev = dev_to_mbus(dv);
 const struct mbus_device_id *ids;

 ids = drv_to_mbus(dr)->id_table;
 for (i = 0; ids[i].device; i++)
  if (mbus_id_match(dev, &ids[i]))
   return 1;
 return 0;
}
