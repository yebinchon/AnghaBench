
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 int bcm_phy_downshift_get (struct phy_device*,int *) ;

__attribute__((used)) static int bcm7xxx_28nm_get_tunable(struct phy_device *phydev,
        struct ethtool_tunable *tuna,
        void *data)
{
 switch (tuna->id) {
 case 128:
  return bcm_phy_downshift_get(phydev, (u8 *)data);
 default:
  return -EOPNOTSUPP;
 }
}
