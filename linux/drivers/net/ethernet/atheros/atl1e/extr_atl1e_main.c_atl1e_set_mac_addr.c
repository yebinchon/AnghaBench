
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {int mac_addr; } ;
struct atl1e_adapter {TYPE_1__ hw; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int atl1e_hw_set_mac_addr (TYPE_1__*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int atl1e_set_mac_addr(struct net_device *netdev, void *p)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (netif_running(netdev))
  return -EBUSY;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(adapter->hw.mac_addr, addr->sa_data, netdev->addr_len);

 atl1e_hw_set_mac_addr(&adapter->hw);

 return 0;
}
