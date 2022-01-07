
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arp_validate; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; int string; } ;


 int netdev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int bond_option_arp_validate_set(struct bonding *bond,
     const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting arp_validate to %s (%llu)\n",
     newval->string, newval->value);
 bond->params.arp_validate = newval->value;

 return 0;
}
