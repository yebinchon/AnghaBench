
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {scalar_t__ reset_gpio; int dev; } ;


 int GPIOD_OUT_LOW ;
 int PTR_ERR_OR_ZERO (scalar_t__) ;
 scalar_t__ gpiod_get_optional (int *,char*,int ) ;
 int gpiod_set_consumer_name (scalar_t__,char*) ;

__attribute__((used)) static int mdiobus_register_gpiod(struct mdio_device *mdiodev)
{
 int error;


 mdiodev->reset_gpio = gpiod_get_optional(&mdiodev->dev,
       "reset", GPIOD_OUT_LOW);
 error = PTR_ERR_OR_ZERO(mdiodev->reset_gpio);
 if (error)
  return error;

 if (mdiodev->reset_gpio)
  gpiod_set_consumer_name(mdiodev->reset_gpio, "PHY reset");

 return 0;
}
