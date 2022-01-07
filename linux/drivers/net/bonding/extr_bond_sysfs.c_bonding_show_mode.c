
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dummy; } ;
struct bond_opt_value {char* string; } ;
typedef int ssize_t ;


 int BOND_MODE (struct bonding*) ;
 int BOND_OPT_MODE ;
 struct bond_opt_value* bond_opt_get_val (int ,int) ;
 int sprintf (char*,char*,char*,int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_mode(struct device *d,
     struct device_attribute *attr, char *buf)
{
 struct bonding *bond = to_bond(d);
 const struct bond_opt_value *val;

 val = bond_opt_get_val(BOND_OPT_MODE, BOND_MODE(bond));

 return sprintf(buf, "%s %d\n", val->string, BOND_MODE(bond));
}
