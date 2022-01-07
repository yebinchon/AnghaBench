
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; } ;
struct TYPE_3__ {int peer_notif_delay; } ;
struct bonding {int send_peer_notif; int dev; TYPE_1__ params; int curr_active_slave; } ;
struct TYPE_4__ {char* name; int state; } ;


 int __LINK_STATE_LINKWATCH_PENDING ;
 int max (int,int ) ;
 int netdev_dbg (int ,char*,char*) ;
 int netif_carrier_ok (int ) ;
 struct slave* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool bond_should_notify_peers(struct bonding *bond)
{
 struct slave *slave;

 rcu_read_lock();
 slave = rcu_dereference(bond->curr_active_slave);
 rcu_read_unlock();

 netdev_dbg(bond->dev, "bond_should_notify_peers: slave %s\n",
     slave ? slave->dev->name : "NULL");

 if (!slave || !bond->send_peer_notif ||
     bond->send_peer_notif %
     max(1, bond->params.peer_notif_delay) != 0 ||
     !netif_carrier_ok(bond->dev) ||
     test_bit(__LINK_STATE_LINKWATCH_PENDING, &slave->dev->state))
  return 0;

 return 1;
}
