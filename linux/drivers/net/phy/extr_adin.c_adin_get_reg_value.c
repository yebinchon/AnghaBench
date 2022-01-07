
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct adin_cfg_reg_map {int dummy; } ;


 int adin_lookup_reg_value (struct adin_cfg_reg_map const*,int) ;
 scalar_t__ device_property_read_u32 (struct device*,char const*,int*) ;
 int phydev_warn (struct phy_device*,char*,int,char const*,int) ;

__attribute__((used)) static u32 adin_get_reg_value(struct phy_device *phydev,
         const char *prop_name,
         const struct adin_cfg_reg_map *tbl,
         u32 dflt)
{
 struct device *dev = &phydev->mdio.dev;
 u32 val;
 int rc;

 if (device_property_read_u32(dev, prop_name, &val))
  return dflt;

 rc = adin_lookup_reg_value(tbl, val);
 if (rc < 0) {
  phydev_warn(phydev,
       "Unsupported value %u for %s using default (%u)\n",
       val, prop_name, dflt);
  return dflt;
 }

 return rc;
}
