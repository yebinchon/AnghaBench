
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct at803x_context {void* led_control; void* smart_speed; void* int_enable; void* control1000; void* advertise; void* bmcr; } ;


 int AT803X_INTR_ENABLE ;
 int AT803X_LED_CONTROL ;
 int AT803X_SMART_SPEED ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 void* phy_read (struct phy_device*,int ) ;

__attribute__((used)) static void at803x_context_save(struct phy_device *phydev,
    struct at803x_context *context)
{
 context->bmcr = phy_read(phydev, MII_BMCR);
 context->advertise = phy_read(phydev, MII_ADVERTISE);
 context->control1000 = phy_read(phydev, MII_CTRL1000);
 context->int_enable = phy_read(phydev, AT803X_INTR_ENABLE);
 context->smart_speed = phy_read(phydev, AT803X_SMART_SPEED);
 context->led_control = phy_read(phydev, AT803X_LED_CONTROL);
}
