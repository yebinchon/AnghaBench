
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int RTL8366RB_POWER_SAVE ;
 int RTL8366RB_POWER_SAVE_ON ;
 int dev_err (int *,char*) ;
 int phy_set_bits (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rtl8366rb_config_init(struct phy_device *phydev)
{
 int ret;

 ret = phy_set_bits(phydev, RTL8366RB_POWER_SAVE,
      RTL8366RB_POWER_SAVE_ON);
 if (ret) {
  dev_err(&phydev->mdio.dev,
   "error enabling power management\n");
 }

 return ret;
}
