
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EBUSY ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bcmgenet_set_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;




 if (netif_running(dev))
  return -EBUSY;

 ether_addr_copy(dev->dev_addr, addr->sa_data);

 return 0;
}
