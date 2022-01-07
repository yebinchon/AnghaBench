
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct netxen_adapter {int (* macaddr_set ) (struct netxen_adapter*,int ) ;int mac_addr; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netxen_napi_disable (struct netxen_adapter*) ;
 int netxen_napi_enable (struct netxen_adapter*) ;
 int stub1 (struct netxen_adapter*,int ) ;

__attribute__((used)) static int netxen_nic_set_mac(struct net_device *netdev, void *p)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (netif_running(netdev)) {
  netif_device_detach(netdev);
  netxen_napi_disable(adapter);
 }

 memcpy(adapter->mac_addr, addr->sa_data, netdev->addr_len);
 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 adapter->macaddr_set(adapter, addr->sa_data);

 if (netif_running(netdev)) {
  netif_device_attach(netdev);
  netxen_napi_enable(adapter);
 }
 return 0;
}
