
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (struct device*,int *) ;
 int * dpaa_eth_attrs ;

void dpaa_eth_sysfs_remove(struct device *dev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dpaa_eth_attrs); i++)
  device_remove_file(dev, &dpaa_eth_attrs[i]);
}
