
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int addr; int dev; } ;


 int dev_dbg (int *,char*) ;
 int device_add (int *) ;
 int mdiobus_register_device (struct mdio_device*) ;
 int mdiobus_unregister_device (struct mdio_device*) ;
 int pr_err (char*,int ) ;

int mdio_device_register(struct mdio_device *mdiodev)
{
 int err;

 dev_dbg(&mdiodev->dev, "mdio_device_register\n");

 err = mdiobus_register_device(mdiodev);
 if (err)
  return err;

 err = device_add(&mdiodev->dev);
 if (err) {
  pr_err("MDIO %d failed to add\n", mdiodev->addr);
  goto out;
 }

 return 0;

 out:
 mdiobus_unregister_device(mdiodev);
 return err;
}
