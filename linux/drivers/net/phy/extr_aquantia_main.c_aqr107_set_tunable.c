
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 int aqr107_set_downshift (struct phy_device*,int const) ;

__attribute__((used)) static int aqr107_set_tunable(struct phy_device *phydev,
         struct ethtool_tunable *tuna, const void *data)
{
 switch (tuna->id) {
 case 128:
  return aqr107_set_downshift(phydev, *(const u8 *)data);
 default:
  return -EOPNOTSUPP;
 }
}
