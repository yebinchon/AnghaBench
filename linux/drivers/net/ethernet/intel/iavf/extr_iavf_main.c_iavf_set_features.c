
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct iavf_adapter {int aq_required; } ;
typedef int netdev_features_t ;


 int EINVAL ;
 int IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING ;
 int IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int VLAN_ALLOWED (struct iavf_adapter*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int iavf_set_features(struct net_device *netdev,
        netdev_features_t features)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);




 if (!VLAN_ALLOWED(adapter)) {
  if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX)
   return -EINVAL;
 } else if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX) {
  if (features & NETIF_F_HW_VLAN_CTAG_RX)
   adapter->aq_required |=
    IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING;
  else
   adapter->aq_required |=
    IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING;
 }

 return 0;
}
