
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bonding {TYPE_1__* dev; } ;
struct bond_opt_value {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg_state; } ;


 int ASSERT_RTNL () ;
 int ENOENT ;
 int NETDEV_CHANGEINFODATA ;
 scalar_t__ NETREG_REGISTERED ;
 int __bond_opt_set (struct bonding*,unsigned int,struct bond_opt_value*) ;
 int call_netdevice_notifiers (int ,TYPE_1__*) ;

int __bond_opt_set_notify(struct bonding *bond,
     unsigned int option, struct bond_opt_value *val)
{
 int ret = -ENOENT;

 ASSERT_RTNL();

 ret = __bond_opt_set(bond, option, val);

 if (!ret && (bond->dev->reg_state == NETREG_REGISTERED))
  call_netdevice_notifiers(NETDEV_CHANGEINFODATA, bond->dev);

 return ret;
}
