
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;


 int device_del (int *) ;
 int mdiobus_unregister_device (struct mdio_device*) ;

void mdio_device_remove(struct mdio_device *mdiodev)
{
 device_del(&mdiodev->dev);
 mdiobus_unregister_device(mdiodev);
}
