
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_links; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; } ;


 int bond_set_carrier (struct bonding*) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int bond_option_min_links_set(struct bonding *bond,
         const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting min links value to %llu\n",
     newval->value);
 bond->params.min_links = newval->value;
 bond_set_carrier(bond);

 return 0;
}
