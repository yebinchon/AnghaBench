
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
struct ad_info {int ports; } ;
typedef int ssize_t ;


 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_8023AD ;
 scalar_t__ bond_3ad_get_active_agg_info (struct bonding*,struct ad_info*) ;
 int sprintf (char*,char*,int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_ad_num_ports(struct device *d,
      struct device_attribute *attr,
      char *buf)
{
 int count = 0;
 struct bonding *bond = to_bond(d);

 if (BOND_MODE(bond) == BOND_MODE_8023AD) {
  struct ad_info ad_info;
  count = sprintf(buf, "%d\n",
    bond_3ad_get_active_agg_info(bond, &ad_info)
    ? 0 : ad_info.ports);
 }

 return count;
}
