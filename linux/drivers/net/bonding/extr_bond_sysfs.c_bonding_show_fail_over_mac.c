
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int fail_over_mac; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {char* string; } ;
typedef int ssize_t ;


 int BOND_OPT_FAIL_OVER_MAC ;
 struct bond_opt_value* bond_opt_get_val (int ,int) ;
 int sprintf (char*,char*,char*,int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_fail_over_mac(struct device *d,
       struct device_attribute *attr,
       char *buf)
{
 struct bonding *bond = to_bond(d);
 const struct bond_opt_value *val;

 val = bond_opt_get_val(BOND_OPT_FAIL_OVER_MAC,
          bond->params.fail_over_mac);

 return sprintf(buf, "%s %d\n", val->string, bond->params.fail_over_mac);
}
