
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_user_port_key; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; } ;


 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int bond_option_ad_user_port_key_set(struct bonding *bond,
         const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting ad_user_port_key to %llu\n",
     newval->value);

 bond->params.ad_user_port_key = newval->value;
 return 0;
}
