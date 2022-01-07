
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EOPNOTSUPP ;

 int m88e1540_set_fld (struct phy_device*,void const*) ;

__attribute__((used)) static int m88e1540_set_tunable(struct phy_device *phydev,
    struct ethtool_tunable *tuna, const void *data)
{
 switch (tuna->id) {
 case 128:
  return m88e1540_set_fld(phydev, data);
 default:
  return -EOPNOTSUPP;
 }
}
