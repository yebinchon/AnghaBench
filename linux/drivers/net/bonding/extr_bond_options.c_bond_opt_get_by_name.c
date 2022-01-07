
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bond_option {int name; } ;


 int BOND_OPT_LAST ;
 struct bond_option* bond_opt_get (int) ;
 int strcmp (int ,char const*) ;

const struct bond_option *bond_opt_get_by_name(const char *name)
{
 const struct bond_option *opt;
 int option;

 for (option = 0; option < BOND_OPT_LAST; option++) {
  opt = bond_opt_get(option);
  if (opt && !strcmp(opt->name, name))
   return opt;
 }

 return ((void*)0);
}
