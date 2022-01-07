
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AT803X_INTR_ENABLE ;
 int AT803X_INTR_ENABLE_WOL ;
 int BMCR_ISOLATE ;
 int BMCR_PDOWN ;
 int MII_BMCR ;
 int phy_modify (struct phy_device*,int ,int ,int) ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int at803x_suspend(struct phy_device *phydev)
{
 int value;
 int wol_enabled;

 value = phy_read(phydev, AT803X_INTR_ENABLE);
 wol_enabled = value & AT803X_INTR_ENABLE_WOL;

 if (wol_enabled)
  value = BMCR_ISOLATE;
 else
  value = BMCR_PDOWN;

 phy_modify(phydev, MII_BMCR, 0, value);

 return 0;
}
