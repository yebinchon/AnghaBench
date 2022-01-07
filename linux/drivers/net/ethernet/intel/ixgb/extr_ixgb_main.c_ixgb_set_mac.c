
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct ixgb_adapter {int hw; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int ixgb_rar_set (int *,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ixgb_set_mac(struct net_device *netdev, void *p)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 ixgb_rar_set(&adapter->hw, addr->sa_data, 0);

 return 0;
}
