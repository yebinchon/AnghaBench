
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bond_option {int dummy; } ;
struct bond_opt_value {scalar_t__ value; } ;


 int BOND_VALFLAG_MAX ;
 int BOND_VALFLAG_MIN ;
 struct bond_opt_value* bond_opt_get_flags (struct bond_option const*,int ) ;

__attribute__((used)) static bool bond_opt_check_range(const struct bond_option *opt, u64 val)
{
 const struct bond_opt_value *minval, *maxval;

 minval = bond_opt_get_flags(opt, BOND_VALFLAG_MIN);
 maxval = bond_opt_get_flags(opt, BOND_VALFLAG_MAX);
 if (!maxval || (minval && val < minval->value) || val > maxval->value)
  return 0;

 return 1;
}
