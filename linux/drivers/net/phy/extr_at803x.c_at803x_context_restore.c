
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct at803x_context {int led_control; int smart_speed; int int_enable; int control1000; int advertise; int bmcr; } ;


 int AT803X_INTR_ENABLE ;
 int AT803X_LED_CONTROL ;
 int AT803X_SMART_SPEED ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void at803x_context_restore(struct phy_device *phydev,
       const struct at803x_context *context)
{
 phy_write(phydev, MII_BMCR, context->bmcr);
 phy_write(phydev, MII_ADVERTISE, context->advertise);
 phy_write(phydev, MII_CTRL1000, context->control1000);
 phy_write(phydev, AT803X_INTR_ENABLE, context->int_enable);
 phy_write(phydev, AT803X_SMART_SPEED, context->smart_speed);
 phy_write(phydev, AT803X_LED_CONTROL, context->led_control);
}
