
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;
struct bond_option {int (* set ) (struct bonding*,struct bond_opt_value const*) ;} ;
struct bond_opt_value {int dummy; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 int bond_opt_check_deps (struct bonding*,struct bond_option const*) ;
 int bond_opt_error_interpret (struct bonding*,struct bond_option const*,int,struct bond_opt_value*) ;
 struct bond_option* bond_opt_get (unsigned int) ;
 struct bond_opt_value* bond_opt_parse (struct bond_option const*,struct bond_opt_value*) ;
 int stub1 (struct bonding*,struct bond_opt_value const*) ;

int __bond_opt_set(struct bonding *bond,
     unsigned int option, struct bond_opt_value *val)
{
 const struct bond_opt_value *retval = ((void*)0);
 const struct bond_option *opt;
 int ret = -ENOENT;

 ASSERT_RTNL();

 opt = bond_opt_get(option);
 if (WARN_ON(!val) || WARN_ON(!opt))
  goto out;
 ret = bond_opt_check_deps(bond, opt);
 if (ret)
  goto out;
 retval = bond_opt_parse(opt, val);
 if (!retval) {
  ret = -EINVAL;
  goto out;
 }
 ret = opt->set(bond, retval);
out:
 if (ret)
  bond_opt_error_interpret(bond, opt, ret, val);

 return ret;
}
