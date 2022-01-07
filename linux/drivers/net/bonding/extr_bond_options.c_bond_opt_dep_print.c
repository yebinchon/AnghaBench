
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bond_params {int mode; } ;
struct bonding {int dev; struct bond_params params; } ;
struct bond_option {int name; int unsuppmodes; } ;
struct bond_opt_value {int value; int string; } ;


 int BOND_OPT_MODE ;
 struct bond_opt_value* bond_opt_get_val (int ,int ) ;
 int netdev_err (int ,char*,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bond_opt_dep_print(struct bonding *bond,
          const struct bond_option *opt)
{
 const struct bond_opt_value *modeval;
 struct bond_params *params;

 params = &bond->params;
 modeval = bond_opt_get_val(BOND_OPT_MODE, params->mode);
 if (test_bit(params->mode, &opt->unsuppmodes))
  netdev_err(bond->dev, "option %s: mode dependency failed, not supported in mode %s(%llu)\n",
      opt->name, modeval->string, modeval->value);
}
