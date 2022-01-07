
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;
struct lan9303_mdio {int chip; } ;


 struct lan9303_mdio* dev_get_drvdata (int *) ;
 int lan9303_remove (int *) ;

__attribute__((used)) static void lan9303_mdio_remove(struct mdio_device *mdiodev)
{
 struct lan9303_mdio *sw_dev = dev_get_drvdata(&mdiodev->dev);

 if (!sw_dev)
  return;

 lan9303_remove(&sw_dev->chip);
}
