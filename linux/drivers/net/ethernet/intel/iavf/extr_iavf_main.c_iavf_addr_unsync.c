
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dev_addr; } ;
struct iavf_mac_filter {int remove; } ;
struct iavf_adapter {int aq_required; } ;


 int IAVF_FLAG_AQ_DEL_MAC_FILTER ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 struct iavf_mac_filter* iavf_find_filter (struct iavf_adapter*,int const*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int iavf_addr_unsync(struct net_device *netdev, const u8 *addr)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 struct iavf_mac_filter *f;






 if (ether_addr_equal(addr, netdev->dev_addr))
  return 0;

 f = iavf_find_filter(adapter, addr);
 if (f) {
  f->remove = 1;
  adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
 }
 return 0;
}
