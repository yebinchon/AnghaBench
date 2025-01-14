
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;


 int EBUSY ;
 int const ETHTOOL_PHY_FAST_LINK_DOWN_OFF ;
 int FIELD_PREP (int ,int) ;
 int MII_88E1540_COPPER_CTRL3 ;
 int MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN ;
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS ;
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS ;
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS ;
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS ;
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK ;
 int phy_clear_bits (struct phy_device*,int ,int ) ;
 int phy_ethtool_get_eee (struct phy_device*,struct ethtool_eee*) ;
 int phy_modify (struct phy_device*,int ,int ,int) ;
 int phy_set_bits (struct phy_device*,int ,int ) ;
 int phydev_warn (struct phy_device*,char*) ;

__attribute__((used)) static int m88e1540_set_fld(struct phy_device *phydev, const u8 *msecs)
{
 struct ethtool_eee eee;
 int val, ret;

 if (*msecs == ETHTOOL_PHY_FAST_LINK_DOWN_OFF)
  return phy_clear_bits(phydev, MII_88E1540_COPPER_CTRL3,
          MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN);




 ret = phy_ethtool_get_eee(phydev, &eee);
 if (!ret && eee.eee_enabled) {
  phydev_warn(phydev, "Fast Link Down detection requires EEE to be disabled!\n");
  return -EBUSY;
 }

 if (*msecs <= 5)
  val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS;
 else if (*msecs <= 15)
  val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS;
 else if (*msecs <= 30)
  val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS;
 else
  val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS;

 val = FIELD_PREP(MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, val);

 ret = phy_modify(phydev, MII_88E1540_COPPER_CTRL3,
    MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, val);
 if (ret)
  return ret;

 return phy_set_bits(phydev, MII_88E1540_COPPER_CTRL3,
       MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN);
}
