
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct iavf_adapter {int flags; int aq_required; int mac_vlan_list_lock; } ;


 int IAVF_FLAG_ALLMULTI_ON ;
 int IAVF_FLAG_AQ_RELEASE_ALLMULTI ;
 int IAVF_FLAG_AQ_RELEASE_PROMISC ;
 int IAVF_FLAG_AQ_REQUEST_ALLMULTI ;
 int IAVF_FLAG_AQ_REQUEST_PROMISC ;
 int IAVF_FLAG_PROMISC_ON ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int iavf_addr_sync ;
 int iavf_addr_unsync ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iavf_set_rx_mode(struct net_device *netdev)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 spin_lock_bh(&adapter->mac_vlan_list_lock);
 __dev_uc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
 __dev_mc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
 spin_unlock_bh(&adapter->mac_vlan_list_lock);

 if (netdev->flags & IFF_PROMISC &&
     !(adapter->flags & IAVF_FLAG_PROMISC_ON))
  adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_PROMISC;
 else if (!(netdev->flags & IFF_PROMISC) &&
   adapter->flags & IAVF_FLAG_PROMISC_ON)
  adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_PROMISC;

 if (netdev->flags & IFF_ALLMULTI &&
     !(adapter->flags & IAVF_FLAG_ALLMULTI_ON))
  adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_ALLMULTI;
 else if (!(netdev->flags & IFF_ALLMULTI) &&
   adapter->flags & IAVF_FLAG_ALLMULTI_ON)
  adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_ALLMULTI;
}
