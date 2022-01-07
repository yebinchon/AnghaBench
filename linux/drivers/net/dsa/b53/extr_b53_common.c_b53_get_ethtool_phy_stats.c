
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct phy_device {int dummy; } ;
struct dsa_switch {int dummy; } ;


 struct phy_device* b53_get_phy_device (struct dsa_switch*,int) ;
 int phy_ethtool_get_stats (struct phy_device*,int *,int *) ;

void b53_get_ethtool_phy_stats(struct dsa_switch *ds, int port, uint64_t *data)
{
 struct phy_device *phydev;

 phydev = b53_get_phy_device(ds, port);
 if (!phydev)
  return;

 phy_ethtool_get_stats(phydev, ((void*)0), data);
}
