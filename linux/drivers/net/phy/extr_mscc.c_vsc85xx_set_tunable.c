
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 int vsc85xx_downshift_set (struct phy_device*,int ) ;

__attribute__((used)) static int vsc85xx_set_tunable(struct phy_device *phydev,
          struct ethtool_tunable *tuna,
          const void *data)
{
 switch (tuna->id) {
 case 128:
  return vsc85xx_downshift_set(phydev, *(u8 *)data);
 default:
  return -EINVAL;
 }
}
