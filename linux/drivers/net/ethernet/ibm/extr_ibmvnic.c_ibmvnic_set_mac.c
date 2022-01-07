
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {scalar_t__ state; int mac_addr; } ;


 scalar_t__ VNIC_PROBED ;
 int __ibmvnic_set_mac (struct net_device*,int ) ;
 int ether_addr_copy (int ,int ) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ibmvnic_set_mac(struct net_device *netdev, void *p)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;
 int rc;

 rc = 0;
 ether_addr_copy(adapter->mac_addr, addr->sa_data);
 if (adapter->state != VNIC_PROBED)
  rc = __ibmvnic_set_mac(netdev, addr->sa_data);

 return rc;
}
