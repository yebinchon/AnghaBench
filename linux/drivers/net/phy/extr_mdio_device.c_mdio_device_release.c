
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_mdio_device (struct device*) ;

__attribute__((used)) static void mdio_device_release(struct device *dev)
{
 kfree(to_mdio_device(dev));
}
