
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int enc28j60_set_hw_macaddr (struct net_device*) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int enc28j60_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *address = addr;

 if (netif_running(dev))
  return -EBUSY;
 if (!is_valid_ether_addr(address->sa_data))
  return -EADDRNOTAVAIL;

 ether_addr_copy(dev->dev_addr, address->sa_data);
 return enc28j60_set_hw_macaddr(dev);
}
