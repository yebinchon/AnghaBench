
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;


 int adin_set_downshift (struct phy_device*,int const) ;
 int adin_set_edpd (struct phy_device*,int const) ;

__attribute__((used)) static int adin_set_tunable(struct phy_device *phydev,
       struct ethtool_tunable *tuna, const void *data)
{
 switch (tuna->id) {
 case 129:
  return adin_set_downshift(phydev, *(const u8 *)data);
 case 128:
  return adin_set_edpd(phydev, *(const u16 *)data);
 default:
  return -EOPNOTSUPP;
 }
}
