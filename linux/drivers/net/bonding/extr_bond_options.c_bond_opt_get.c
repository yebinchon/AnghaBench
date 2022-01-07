
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bond_option {int dummy; } ;


 int BOND_OPT_VALID (unsigned int) ;
 struct bond_option const* bond_opts ;

const struct bond_option *bond_opt_get(unsigned int option)
{
 if (!BOND_OPT_VALID(option))
  return ((void*)0);

 return &bond_opts[option];
}
