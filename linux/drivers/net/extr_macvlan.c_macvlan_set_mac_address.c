
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct macvlan_dev {scalar_t__ mode; int port; int lowerdev; } ;


 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 scalar_t__ MACVLAN_MODE_PASSTHRU ;
 int dev_set_mac_address (int ,struct sockaddr*,int *) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ macvlan_addr_busy (int ,int ) ;
 int macvlan_set_addr_change (int ) ;
 int macvlan_sync_address (struct net_device*,int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_set_mac_address(struct net_device *dev, void *p)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;


 if (ether_addr_equal(dev->dev_addr, addr->sa_data))
  return 0;

 if (vlan->mode == MACVLAN_MODE_PASSTHRU) {
  macvlan_set_addr_change(vlan->port);
  return dev_set_mac_address(vlan->lowerdev, addr, ((void*)0));
 }

 if (macvlan_addr_busy(vlan->port, addr->sa_data))
  return -EADDRINUSE;

 return macvlan_sync_address(dev, addr->sa_data);
}
