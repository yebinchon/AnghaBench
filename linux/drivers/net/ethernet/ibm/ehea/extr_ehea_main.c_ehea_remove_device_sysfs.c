
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_attr_probe_port ;
 int dev_attr_remove_port ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void ehea_remove_device_sysfs(struct platform_device *dev)
{
 device_remove_file(&dev->dev, &dev_attr_probe_port);
 device_remove_file(&dev->dev, &dev_attr_remove_port);
}
