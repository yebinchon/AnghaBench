
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int primary_reselect; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {int value; int string; } ;


 int block_netpoll_tx () ;
 int bond_select_active_slave (struct bonding*) ;
 int netdev_dbg (int ,char*,int ,int ) ;
 int unblock_netpoll_tx () ;

__attribute__((used)) static int bond_option_primary_reselect_set(struct bonding *bond,
         const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting primary_reselect to %s (%llu)\n",
     newval->string, newval->value);
 bond->params.primary_reselect = newval->value;

 block_netpoll_tx();
 bond_select_active_slave(bond);
 unblock_netpoll_tx();

 return 0;
}
