
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int genphy_read_abilities (struct phy_device*) ;
 int linkmode_clear_bit (int ,int ) ;
 int linkmode_set_bit (int ,int ) ;

__attribute__((used)) static int ksz9031_get_features(struct phy_device *phydev)
{
 int ret;

 ret = genphy_read_abilities(phydev);
 if (ret < 0)
  return ret;
 linkmode_clear_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT, phydev->supported);




 linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT, phydev->supported);

 return 0;
}
