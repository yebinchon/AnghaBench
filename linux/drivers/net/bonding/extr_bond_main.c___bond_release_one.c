
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; int __data; } ;
struct sockaddr {int dummy; } ;
struct slave {int original_mtu; TYPE_2__* dev; int perm_hwaddr; } ;
struct net_device {int flags; int features; int priv_flags; int type; int dev_addr; } ;
struct TYPE_3__ {scalar_t__ fail_over_mac; } ;
struct bonding {TYPE_1__ params; int dev; int slave_cnt; int curr_active_slave; int primary_slave; int current_arp_slave; int bond_stats; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {int addr_len; } ;


 scalar_t__ BOND_FOM_ACTIVE ;
 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_8023AD ;
 scalar_t__ BOND_MODE_ACTIVEBACKUP ;
 int BOND_SLAVE_NOTIFY_NOW ;
 int EINVAL ;
 int IFF_ALLMULTI ;
 int IFF_BONDING ;
 int IFF_PROMISC ;
 int IFF_SLAVE ;
 int NETDEV_CHANGEADDR ;
 int NETDEV_RELEASE ;
 int NETIF_F_VLAN_CHALLENGED ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __dev_set_mtu (struct net_device*,int ) ;
 int block_netpoll_tx () ;
 int bond_3ad_unbind_slave (struct slave*) ;
 int bond_alb_deinit_slave (struct bonding*,struct slave*) ;
 int bond_change_active_slave (struct bonding*,int *) ;
 int bond_compute_features (struct bonding*) ;
 int bond_free_slave (struct slave*) ;
 struct slave* bond_get_slave_by_dev (struct bonding*,struct net_device*) ;
 int bond_get_stats (int ,int *) ;
 scalar_t__ bond_has_slaves (struct bonding*) ;
 int bond_hw_addr_copy (int ,int ,int ) ;
 int bond_hw_addr_flush (struct net_device*,struct net_device*) ;
 scalar_t__ bond_is_active_slave (struct slave*) ;
 scalar_t__ bond_is_lb (struct bonding*) ;
 scalar_t__ bond_mode_can_use_xmit_hash (struct bonding*) ;
 int bond_select_active_slave (struct bonding*) ;
 int bond_set_carrier (struct bonding*) ;
 int bond_set_slave_inactive_flags (struct slave*,int ) ;
 int bond_sysfs_slave_del (struct slave*) ;
 int bond_update_slave_arr (struct bonding*,struct slave*) ;
 int bond_upper_dev_unlink (struct bonding*,struct slave*) ;
 int bond_uses_primary (struct bonding*) ;
 int call_netdevice_notifiers (int ,int ) ;
 int dev_close (struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int eth_hw_addr_random (struct net_device*) ;
 scalar_t__ ether_addr_equal_64bits (int ,int ) ;
 int netdev_has_upper_dev (struct net_device*,struct net_device*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int netif_is_bond_master (struct net_device*) ;
 struct slave* rcu_access_pointer (int ) ;
 struct slave* rtnl_dereference (int ) ;
 int slave_dbg (struct net_device*,struct net_device*,char*) ;
 int slave_disable_netpoll (struct slave*) ;
 int slave_info (struct net_device*,struct net_device*,char*,...) ;
 int slave_warn (struct net_device*,struct net_device*,char*,int ) ;
 int synchronize_rcu () ;
 int unblock_netpoll_tx () ;
 int vlan_vids_del_by_dev (struct net_device*,struct net_device*) ;

__attribute__((used)) static int __bond_release_one(struct net_device *bond_dev,
         struct net_device *slave_dev,
         bool all, bool unregister)
{
 struct bonding *bond = netdev_priv(bond_dev);
 struct slave *slave, *oldcurrent;
 struct sockaddr_storage ss;
 int old_flags = bond_dev->flags;
 netdev_features_t old_features = bond_dev->features;


 if (!(slave_dev->flags & IFF_SLAVE) ||
     !netdev_has_upper_dev(slave_dev, bond_dev)) {
  slave_dbg(bond_dev, slave_dev, "cannot release slave\n");
  return -EINVAL;
 }

 block_netpoll_tx();

 slave = bond_get_slave_by_dev(bond, slave_dev);
 if (!slave) {

  slave_info(bond_dev, slave_dev, "interface not enslaved\n");
  unblock_netpoll_tx();
  return -EINVAL;
 }

 bond_set_slave_inactive_flags(slave, BOND_SLAVE_NOTIFY_NOW);

 bond_sysfs_slave_del(slave);


 bond_get_stats(bond->dev, &bond->bond_stats);

 bond_upper_dev_unlink(bond, slave);



 netdev_rx_handler_unregister(slave_dev);

 if (BOND_MODE(bond) == BOND_MODE_8023AD)
  bond_3ad_unbind_slave(slave);

 if (bond_mode_can_use_xmit_hash(bond))
  bond_update_slave_arr(bond, slave);

 slave_info(bond_dev, slave_dev, "Releasing %s interface\n",
      bond_is_active_slave(slave) ? "active" : "backup");

 oldcurrent = rcu_access_pointer(bond->curr_active_slave);

 RCU_INIT_POINTER(bond->current_arp_slave, ((void*)0));

 if (!all && (!bond->params.fail_over_mac ||
       BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)) {
  if (ether_addr_equal_64bits(bond_dev->dev_addr, slave->perm_hwaddr) &&
      bond_has_slaves(bond))
   slave_warn(bond_dev, slave_dev, "the permanent HWaddr of slave - %pM - is still in use by bond - set the HWaddr of slave to a different address to avoid conflicts\n",
       slave->perm_hwaddr);
 }

 if (rtnl_dereference(bond->primary_slave) == slave)
  RCU_INIT_POINTER(bond->primary_slave, ((void*)0));

 if (oldcurrent == slave)
  bond_change_active_slave(bond, ((void*)0));

 if (bond_is_lb(bond)) {





  bond_alb_deinit_slave(bond, slave);
 }

 if (all) {
  RCU_INIT_POINTER(bond->curr_active_slave, ((void*)0));
 } else if (oldcurrent == slave) {




  bond_select_active_slave(bond);
 }

 if (!bond_has_slaves(bond)) {
  bond_set_carrier(bond);
  eth_hw_addr_random(bond_dev);
 }

 unblock_netpoll_tx();
 synchronize_rcu();
 bond->slave_cnt--;

 if (!bond_has_slaves(bond)) {
  call_netdevice_notifiers(NETDEV_CHANGEADDR, bond->dev);
  call_netdevice_notifiers(NETDEV_RELEASE, bond->dev);
 }

 bond_compute_features(bond);
 if (!(bond_dev->features & NETIF_F_VLAN_CHALLENGED) &&
     (old_features & NETIF_F_VLAN_CHALLENGED))
  slave_info(bond_dev, slave_dev, "last VLAN challenged slave left bond - VLAN blocking is removed\n");

 vlan_vids_del_by_dev(slave_dev, bond_dev);




 if (!bond_uses_primary(bond)) {







  if (old_flags & IFF_PROMISC)
   dev_set_promiscuity(slave_dev, -1);


  if (old_flags & IFF_ALLMULTI)
   dev_set_allmulti(slave_dev, -1);

  bond_hw_addr_flush(bond_dev, slave_dev);
 }

 slave_disable_netpoll(slave);


 dev_close(slave_dev);

 if (bond->params.fail_over_mac != BOND_FOM_ACTIVE ||
     BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP) {

  bond_hw_addr_copy(ss.__data, slave->perm_hwaddr,
      slave->dev->addr_len);
  ss.ss_family = slave_dev->type;
  dev_set_mac_address(slave_dev, (struct sockaddr *)&ss, ((void*)0));
 }

 if (unregister)
  __dev_set_mtu(slave_dev, slave->original_mtu);
 else
  dev_set_mtu(slave_dev, slave->original_mtu);

 if (!netif_is_bond_master(slave_dev))
  slave_dev->priv_flags &= ~IFF_BONDING;

 bond_free_slave(slave);

 return 0;
}
