
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bond_option {struct bond_opt_value const* values; } ;
struct bond_opt_value {scalar_t__ value; scalar_t__ string; } ;


 scalar_t__ WARN_ON (int) ;
 struct bond_option* bond_opt_get (unsigned int) ;

const struct bond_opt_value *bond_opt_get_val(unsigned int option, u64 val)
{
 const struct bond_option *opt;
 int i;

 opt = bond_opt_get(option);
 if (WARN_ON(!opt))
  return ((void*)0);
 for (i = 0; opt->values && opt->values[i].string; i++)
  if (opt->values[i].value == val)
   return &opt->values[i];

 return ((void*)0);
}
