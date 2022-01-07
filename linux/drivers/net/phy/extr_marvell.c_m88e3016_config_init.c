
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_88E3016_AUTO_MDIX_CROSSOVER ;
 int MII_88E3016_DISABLE_SCRAMBLER ;
 int MII_88E3016_PHY_SPEC_CTRL ;
 int marvell_config_init (struct phy_device*) ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int m88e3016_config_init(struct phy_device *phydev)
{
 int ret;


 ret = phy_modify(phydev, MII_88E3016_PHY_SPEC_CTRL,
    MII_88E3016_DISABLE_SCRAMBLER,
    MII_88E3016_AUTO_MDIX_CROSSOVER);
 if (ret < 0)
  return ret;

 return marvell_config_init(phydev);
}
