
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {scalar_t__ link; int delay; int dev; int last_link_up; } ;
struct TYPE_2__ {int updelay; int miimon; int num_peer_notif; scalar_t__ resend_igmp; int peer_notif_delay; scalar_t__ fail_over_mac; } ;
struct bonding {int send_peer_notif; scalar_t__ igmp_retrans; int mcast_work; int wq; TYPE_1__ params; int dev; int curr_active_slave; } ;


 int ASSERT_RTNL () ;
 scalar_t__ BOND_LINK_BACK ;
 int BOND_LINK_UP ;
 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_8023AD ;
 scalar_t__ BOND_MODE_ACTIVEBACKUP ;
 scalar_t__ BOND_MODE_ROUNDROBIN ;
 int BOND_SLAVE_NOTIFY_NOW ;
 int NETDEV_BONDING_FAILOVER ;
 int NETDEV_NOTIFY_PEERS ;
 int bond_3ad_handle_link_change (struct slave*,int ) ;
 int bond_alb_handle_active_change (struct bonding*,struct slave*) ;
 int bond_alb_handle_link_change (struct bonding*,struct slave*,int ) ;
 int bond_do_fail_over_mac (struct bonding*,struct slave*,struct slave*) ;
 int bond_hw_addr_swap (struct bonding*,struct slave*,struct slave*) ;
 scalar_t__ bond_is_lb (struct bonding*) ;
 int bond_set_slave_active_flags (struct slave*,int ) ;
 int bond_set_slave_inactive_flags (struct slave*,int ) ;
 int bond_set_slave_link_state (struct slave*,int ,int ) ;
 int bond_should_notify_peers (struct bonding*) ;
 scalar_t__ bond_uses_primary (struct bonding*) ;
 int call_netdevice_notifiers (int ,int ) ;
 int jiffies ;
 int max (int,int ) ;
 scalar_t__ netif_running (int ) ;
 int queue_delayed_work (int ,int *,int) ;
 int rcu_assign_pointer (int ,struct slave*) ;
 struct slave* rtnl_dereference (int ) ;
 int slave_info (int ,int ,char*,...) ;

void bond_change_active_slave(struct bonding *bond, struct slave *new_active)
{
 struct slave *old_active;

 ASSERT_RTNL();

 old_active = rtnl_dereference(bond->curr_active_slave);

 if (old_active == new_active)
  return;

 if (new_active) {
  new_active->last_link_up = jiffies;

  if (new_active->link == BOND_LINK_BACK) {
   if (bond_uses_primary(bond)) {
    slave_info(bond->dev, new_active->dev, "making interface the new active one %d ms earlier\n",
        (bond->params.updelay - new_active->delay) * bond->params.miimon);
   }

   new_active->delay = 0;
   bond_set_slave_link_state(new_active, BOND_LINK_UP,
        BOND_SLAVE_NOTIFY_NOW);

   if (BOND_MODE(bond) == BOND_MODE_8023AD)
    bond_3ad_handle_link_change(new_active, BOND_LINK_UP);

   if (bond_is_lb(bond))
    bond_alb_handle_link_change(bond, new_active, BOND_LINK_UP);
  } else {
   if (bond_uses_primary(bond)) {
    slave_info(bond->dev, new_active->dev, "making interface the new active one\n");
   }
  }
 }

 if (bond_uses_primary(bond))
  bond_hw_addr_swap(bond, new_active, old_active);

 if (bond_is_lb(bond)) {
  bond_alb_handle_active_change(bond, new_active);
  if (old_active)
   bond_set_slave_inactive_flags(old_active,
            BOND_SLAVE_NOTIFY_NOW);
  if (new_active)
   bond_set_slave_active_flags(new_active,
          BOND_SLAVE_NOTIFY_NOW);
 } else {
  rcu_assign_pointer(bond->curr_active_slave, new_active);
 }

 if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP) {
  if (old_active)
   bond_set_slave_inactive_flags(old_active,
            BOND_SLAVE_NOTIFY_NOW);

  if (new_active) {
   bool should_notify_peers = 0;

   bond_set_slave_active_flags(new_active,
          BOND_SLAVE_NOTIFY_NOW);

   if (bond->params.fail_over_mac)
    bond_do_fail_over_mac(bond, new_active,
            old_active);

   if (netif_running(bond->dev)) {
    bond->send_peer_notif =
     bond->params.num_peer_notif *
     max(1, bond->params.peer_notif_delay);
    should_notify_peers =
     bond_should_notify_peers(bond);
   }

   call_netdevice_notifiers(NETDEV_BONDING_FAILOVER, bond->dev);
   if (should_notify_peers) {
    bond->send_peer_notif--;
    call_netdevice_notifiers(NETDEV_NOTIFY_PEERS,
        bond->dev);
   }
  }
 }






 if (netif_running(bond->dev) && (bond->params.resend_igmp > 0) &&
     ((bond_uses_primary(bond) && new_active) ||
      BOND_MODE(bond) == BOND_MODE_ROUNDROBIN)) {
  bond->igmp_retrans = bond->params.resend_igmp;
  queue_delayed_work(bond->wq, &bond->mcast_work, 1);
 }
}
