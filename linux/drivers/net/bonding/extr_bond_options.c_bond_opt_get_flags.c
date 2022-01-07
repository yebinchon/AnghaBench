
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bond_option {struct bond_opt_value const* values; } ;
struct bond_opt_value {int flags; scalar_t__ string; } ;



__attribute__((used)) static const struct bond_opt_value *bond_opt_get_flags(const struct bond_option *opt,
             u32 flagmask)
{
 int i;

 for (i = 0; opt->values && opt->values[i].string; i++)
  if (opt->values[i].flags & flagmask)
   return &opt->values[i];

 return ((void*)0);
}
