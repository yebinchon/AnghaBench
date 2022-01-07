
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct iavf_mac_filter {int remove; } ;
struct TYPE_2__ {int addr; } ;
struct iavf_hw {TYPE_1__ mac; } ;
struct iavf_adapter {int mac_vlan_list_lock; int aq_required; struct iavf_hw hw; } ;


 int EADDRNOTAVAIL ;
 int ENOMEM ;
 int IAVF_FLAG_AQ_DEL_MAC_FILTER ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 struct iavf_mac_filter* iavf_add_filter (struct iavf_adapter*,int ) ;
 struct iavf_mac_filter* iavf_find_filter (struct iavf_adapter*,int ) ;
 int is_valid_ether_addr (int ) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iavf_set_mac(struct net_device *netdev, void *p)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 struct iavf_hw *hw = &adapter->hw;
 struct iavf_mac_filter *f;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
  return 0;

 spin_lock_bh(&adapter->mac_vlan_list_lock);

 f = iavf_find_filter(adapter, hw->mac.addr);
 if (f) {
  f->remove = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
 }

 f = iavf_add_filter(adapter, addr->sa_data);

 spin_unlock_bh(&adapter->mac_vlan_list_lock);

 if (f) {
  ether_addr_copy(hw->mac.addr, addr->sa_data);
 }

 return (f == ((void*)0)) ? -ENOMEM : 0;
}
