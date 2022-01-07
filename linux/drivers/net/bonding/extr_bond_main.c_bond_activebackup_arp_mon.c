
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arp_interval; } ;
struct bonding {int dev; int arp_work; int wq; TYPE_1__ params; } ;


 int NETDEV_NOTIFY_PEERS ;
 int bond_ab_arp_commit (struct bonding*) ;
 scalar_t__ bond_ab_arp_inspect (struct bonding*) ;
 int bond_ab_arp_probe (struct bonding*) ;
 int bond_has_slaves (struct bonding*) ;
 int bond_should_notify_peers (struct bonding*) ;
 int bond_slave_link_notify (struct bonding*) ;
 int bond_slave_state_notify (struct bonding*) ;
 int call_netdevice_notifiers (int ,int ) ;
 int msecs_to_jiffies (scalar_t__) ;
 int queue_delayed_work (int ,int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void bond_activebackup_arp_mon(struct bonding *bond)
{
 bool should_notify_peers = 0;
 bool should_notify_rtnl = 0;
 int delta_in_ticks;

 delta_in_ticks = msecs_to_jiffies(bond->params.arp_interval);

 if (!bond_has_slaves(bond))
  goto re_arm;

 rcu_read_lock();

 should_notify_peers = bond_should_notify_peers(bond);

 if (bond_ab_arp_inspect(bond)) {
  rcu_read_unlock();


  if (!rtnl_trylock()) {
   delta_in_ticks = 1;
   should_notify_peers = 0;
   goto re_arm;
  }

  bond_ab_arp_commit(bond);

  rtnl_unlock();
  rcu_read_lock();
 }

 should_notify_rtnl = bond_ab_arp_probe(bond);
 rcu_read_unlock();

re_arm:
 if (bond->params.arp_interval)
  queue_delayed_work(bond->wq, &bond->arp_work, delta_in_ticks);

 if (should_notify_peers || should_notify_rtnl) {
  if (!rtnl_trylock())
   return;

  if (should_notify_peers)
   call_netdevice_notifiers(NETDEV_NOTIFY_PEERS,
       bond->dev);
  if (should_notify_rtnl) {
   bond_slave_state_notify(bond);
   bond_slave_link_notify(bond);
  }

  rtnl_unlock();
 }
}
