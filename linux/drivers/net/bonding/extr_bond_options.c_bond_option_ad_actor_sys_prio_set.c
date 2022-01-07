
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_actor_sys_prio; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; } ;


 int bond_3ad_update_ad_actor_settings (struct bonding*) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int bond_option_ad_actor_sys_prio_set(struct bonding *bond,
          const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting ad_actor_sys_prio to %llu\n",
     newval->value);

 bond->params.ad_actor_sys_prio = newval->value;
 bond_3ad_update_ad_actor_settings(bond);

 return 0;
}
