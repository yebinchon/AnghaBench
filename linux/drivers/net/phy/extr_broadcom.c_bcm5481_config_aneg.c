
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;


 scalar_t__ MII_BCM54XX_EXP_SEL_ER ;
 int bcm54xx_config_clock_delay (struct phy_device*) ;
 int bcm_phy_write_exp (struct phy_device*,scalar_t__,int) ;
 int genphy_config_aneg (struct phy_device*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static int bcm5481_config_aneg(struct phy_device *phydev)
{
 struct device_node *np = phydev->mdio.dev.of_node;
 int ret;


 ret = genphy_config_aneg(phydev);


 bcm54xx_config_clock_delay(phydev);

 if (of_property_read_bool(np, "enet-phy-lane-swap")) {

  ret = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_SEL_ER + 0x9,
     0x11B);
  if (ret < 0)
   return ret;
 }

 return ret;
}
