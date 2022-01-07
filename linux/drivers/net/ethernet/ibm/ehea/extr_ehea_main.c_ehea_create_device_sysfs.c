
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_attr_probe_port ;
 int dev_attr_remove_port ;
 int device_create_file (int *,int *) ;

__attribute__((used)) static int ehea_create_device_sysfs(struct platform_device *dev)
{
 int ret = device_create_file(&dev->dev, &dev_attr_probe_port);
 if (ret)
  goto out;

 ret = device_create_file(&dev->dev, &dev_attr_remove_port);
out:
 return ret;
}
