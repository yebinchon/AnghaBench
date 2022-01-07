
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;


 int adin_get_downshift (struct phy_device*,void*) ;
 int adin_get_edpd (struct phy_device*,void*) ;

__attribute__((used)) static int adin_get_tunable(struct phy_device *phydev,
       struct ethtool_tunable *tuna, void *data)
{
 switch (tuna->id) {
 case 129:
  return adin_get_downshift(phydev, data);
 case 128:
  return adin_get_edpd(phydev, data);
 default:
  return -EOPNOTSUPP;
 }
}
