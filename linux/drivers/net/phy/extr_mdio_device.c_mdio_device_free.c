
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;


 int put_device (int *) ;

void mdio_device_free(struct mdio_device *mdiodev)
{
 put_device(&mdiodev->dev);
}
