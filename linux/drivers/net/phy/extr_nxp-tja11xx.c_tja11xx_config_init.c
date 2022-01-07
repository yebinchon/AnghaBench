
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int phy_id; int duplex; int speed; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int MII_CFG1 ;
 int MII_CFG1_AUTO_OP ;
 int MII_CFG1_LED_ENABLE ;
 int MII_CFG1_LED_MODE_LINKUP ;
 int MII_CFG1_LED_MODE_MASK ;
 int MII_CFG1_SLEEP_CONFIRM ;
 int MII_CFG2 ;
 int MII_CFG2_SLEEP_REQUEST_TO ;
 int MII_CFG2_SLEEP_REQUEST_TO_16MS ;
 int MII_COMMCFG ;
 int MII_COMMCFG_AUTO_OP ;
 int MII_INTSRC ;
 int PHY_ID_MASK ;


 int SPEED_100 ;
 int phy_clear_bits (struct phy_device*,int ,int ) ;
 int phy_modify (struct phy_device*,int ,int,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_set_bits (struct phy_device*,int ,int ) ;
 int tja11xx_enable_reg_write (struct phy_device*) ;
 int tja11xx_wakeup (struct phy_device*) ;

__attribute__((used)) static int tja11xx_config_init(struct phy_device *phydev)
{
 int ret;

 ret = tja11xx_enable_reg_write(phydev);
 if (ret)
  return ret;

 phydev->autoneg = AUTONEG_DISABLE;
 phydev->speed = SPEED_100;
 phydev->duplex = DUPLEX_FULL;

 switch (phydev->phy_id & PHY_ID_MASK) {
 case 129:
  ret = phy_modify(phydev, MII_CFG1,
     MII_CFG1_AUTO_OP | MII_CFG1_LED_MODE_MASK |
     MII_CFG1_LED_ENABLE,
     MII_CFG1_AUTO_OP | MII_CFG1_LED_MODE_LINKUP |
     MII_CFG1_LED_ENABLE);
  if (ret)
   return ret;
  break;
 case 128:
  ret = phy_set_bits(phydev, MII_COMMCFG, MII_COMMCFG_AUTO_OP);
  if (ret)
   return ret;
  break;
 default:
  return -EINVAL;
 }

 ret = phy_clear_bits(phydev, MII_CFG1, MII_CFG1_SLEEP_CONFIRM);
 if (ret)
  return ret;

 ret = phy_modify(phydev, MII_CFG2, MII_CFG2_SLEEP_REQUEST_TO,
    MII_CFG2_SLEEP_REQUEST_TO_16MS);
 if (ret)
  return ret;

 ret = tja11xx_wakeup(phydev);
 if (ret < 0)
  return ret;


 ret = phy_read(phydev, MII_INTSRC);
 if (ret < 0)
  return ret;

 return 0;
}
