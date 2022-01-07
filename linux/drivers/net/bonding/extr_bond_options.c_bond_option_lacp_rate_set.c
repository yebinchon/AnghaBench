
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lacp_fast; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; int string; } ;


 int bond_3ad_update_lacp_rate (struct bonding*) ;
 int netdev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int bond_option_lacp_rate_set(struct bonding *bond,
         const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting LACP rate to %s (%llu)\n",
     newval->string, newval->value);
 bond->params.lacp_fast = newval->value;
 bond_3ad_update_lacp_rate(bond);

 return 0;
}
