
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int mfd_remove_devices (struct device*) ;

__attribute__((used)) static void devm_mfd_dev_release(struct device *dev, void *res)
{
 mfd_remove_devices(dev);
}
