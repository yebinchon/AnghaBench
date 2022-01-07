
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_ECTRL ;
 int MII_ECTRL_POWER_MODE_MASK ;



 int MII_ECTRL_WAKE_REQUEST ;
 int MII_GENSTAT ;
 int MII_GENSTAT_PLL_LOCKED ;
 int phy_clear_bits (struct phy_device*,int ,int ) ;
 int phy_modify (struct phy_device*,int ,int,int const) ;
 int phy_modify_check (struct phy_device*,int ,int,int const) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_set_bits (struct phy_device*,int ,int ) ;
 int tja11xx_enable_link_control (struct phy_device*) ;

__attribute__((used)) static int tja11xx_wakeup(struct phy_device *phydev)
{
 int ret;

 ret = phy_read(phydev, MII_ECTRL);
 if (ret < 0)
  return ret;

 switch (ret & MII_ECTRL_POWER_MODE_MASK) {
 case 129:
  break;
 case 130:
  ret = phy_set_bits(phydev, MII_ECTRL, MII_ECTRL_WAKE_REQUEST);
  if (ret)
   return ret;

  ret = phy_clear_bits(phydev, MII_ECTRL, MII_ECTRL_WAKE_REQUEST);
  if (ret)
   return ret;
  break;
 case 128:
  ret = phy_modify_check(phydev, MII_ECTRL,
           MII_ECTRL_POWER_MODE_MASK,
           128);
  if (ret)
   return ret;

  ret = phy_modify(phydev, MII_ECTRL, MII_ECTRL_POWER_MODE_MASK,
     130);
  if (ret)
   return ret;

  ret = phy_modify_check(phydev, MII_GENSTAT,
           MII_GENSTAT_PLL_LOCKED,
           MII_GENSTAT_PLL_LOCKED);
  if (ret)
   return ret;

  return tja11xx_enable_link_control(phydev);
 default:
  break;
 }

 return 0;
}
