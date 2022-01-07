
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_carrier; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; } ;


 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int bond_option_use_carrier_set(struct bonding *bond,
           const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting use_carrier to %llu\n",
     newval->value);
 bond->params.use_carrier = newval->value;

 return 0;
}
