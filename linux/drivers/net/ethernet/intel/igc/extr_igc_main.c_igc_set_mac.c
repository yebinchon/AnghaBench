
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {int addr; } ;
struct igc_hw {TYPE_1__ mac; } ;
struct igc_adapter {struct igc_hw hw; } ;


 int EADDRNOTAVAIL ;
 int igc_set_default_mac_filter (struct igc_adapter*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igc_set_mac(struct net_device *netdev, void *p)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 struct igc_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(hw->mac.addr, addr->sa_data, netdev->addr_len);


 igc_set_default_mac_filter(adapter);

 return 0;
}
