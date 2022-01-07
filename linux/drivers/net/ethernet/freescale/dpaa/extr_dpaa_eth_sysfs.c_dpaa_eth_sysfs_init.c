
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 int * dpaa_eth_attrs ;

void dpaa_eth_sysfs_init(struct device *dev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dpaa_eth_attrs); i++)
  if (device_create_file(dev, &dpaa_eth_attrs[i])) {
   dev_err(dev, "Error creating sysfs file\n");
   while (i > 0)
    device_remove_file(dev, &dpaa_eth_attrs[--i]);
   return;
  }
}
