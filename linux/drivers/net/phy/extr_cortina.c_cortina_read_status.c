
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int link; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int SPEED_10000 ;
 int VILLA_GLOBAL_GPIO_1_INTS ;
 int cortina_read_reg (struct phy_device*,int ) ;

__attribute__((used)) static int cortina_read_status(struct phy_device *phydev)
{
 int gpio_int_status, ret = 0;

 gpio_int_status = cortina_read_reg(phydev, VILLA_GLOBAL_GPIO_1_INTS);
 if (gpio_int_status < 0) {
  ret = gpio_int_status;
  goto err;
 }

 if (gpio_int_status & 0x8) {

  phydev->speed = SPEED_10000;
  phydev->duplex = DUPLEX_FULL;
  phydev->link = 1;
 } else {
  phydev->link = 0;
 }

err:
 return ret;
}
