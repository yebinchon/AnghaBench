
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int downdelay; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {int dummy; } ;


 int _bond_option_delay_set (struct bonding*,struct bond_opt_value const*,char*,int *) ;

__attribute__((used)) static int bond_option_downdelay_set(struct bonding *bond,
         const struct bond_opt_value *newval)
{
 return _bond_option_delay_set(bond, newval, "down delay",
          &bond->params.downdelay);
}
