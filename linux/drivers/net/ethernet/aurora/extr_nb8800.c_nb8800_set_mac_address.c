
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EBUSY ;
 int ether_addr_copy (int ,int ) ;
 int nb8800_update_mac_addr (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int nb8800_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sock = addr;

 if (netif_running(dev))
  return -EBUSY;

 ether_addr_copy(dev->dev_addr, sock->sa_data);
 nb8800_update_mac_addr(dev);

 return 0;
}
