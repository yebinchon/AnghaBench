
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_10000baseR_FEC_BIT ;
 int linkmode_set_bit (int ,int ) ;

__attribute__((used)) static int bcm87xx_get_features(struct phy_device *phydev)
{
 linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseR_FEC_BIT,
    phydev->supported);
 return 0;
}
