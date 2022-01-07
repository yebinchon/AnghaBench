
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 scalar_t__ DOWNSHIFT_DEV_DISABLE ;
 int EOPNOTSUPP ;

 int bcm_phy_downshift_set (struct phy_device*,scalar_t__) ;
 int bcm_phy_set_eee (struct phy_device*,int) ;
 int genphy_restart_aneg (struct phy_device*) ;

__attribute__((used)) static int bcm7xxx_28nm_set_tunable(struct phy_device *phydev,
        struct ethtool_tunable *tuna,
        const void *data)
{
 u8 count = *(u8 *)data;
 int ret;

 switch (tuna->id) {
 case 128:
  ret = bcm_phy_downshift_set(phydev, count);
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (ret)
  return ret;





 ret = bcm_phy_set_eee(phydev, count == DOWNSHIFT_DEV_DISABLE);
 if (ret)
  return ret;

 return genphy_restart_aneg(phydev);
}
