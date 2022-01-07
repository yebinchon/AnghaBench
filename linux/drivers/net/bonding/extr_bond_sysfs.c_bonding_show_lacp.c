
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int lacp_fast; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {char* string; } ;
typedef int ssize_t ;


 int BOND_OPT_LACP_RATE ;
 struct bond_opt_value* bond_opt_get_val (int ,int) ;
 int sprintf (char*,char*,char*,int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_lacp(struct device *d,
     struct device_attribute *attr,
     char *buf)
{
 struct bonding *bond = to_bond(d);
 const struct bond_opt_value *val;

 val = bond_opt_get_val(BOND_OPT_LACP_RATE, bond->params.lacp_fast);

 return sprintf(buf, "%s %d\n", val->string, bond->params.lacp_fast);
}
