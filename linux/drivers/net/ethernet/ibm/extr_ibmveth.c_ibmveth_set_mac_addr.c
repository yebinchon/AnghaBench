
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct ibmveth_adapter {int netdev; TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 int EADDRNOTAVAIL ;
 int ether_addr_copy (int ,int ) ;
 int h_change_logical_lan_mac (int ,int ) ;
 int ibmveth_encode_mac_addr (int ) ;
 int is_valid_ether_addr (int ) ;
 int netdev_err (int ,char*,int) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ibmveth_set_mac_addr(struct net_device *dev, void *p)
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);
 struct sockaddr *addr = p;
 u64 mac_address;
 int rc;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 mac_address = ibmveth_encode_mac_addr(addr->sa_data);
 rc = h_change_logical_lan_mac(adapter->vdev->unit_address, mac_address);
 if (rc) {
  netdev_err(adapter->netdev, "h_change_logical_lan_mac failed with rc=%d\n", rc);
  return rc;
 }

 ether_addr_copy(dev->dev_addr, addr->sa_data);

 return 0;
}
