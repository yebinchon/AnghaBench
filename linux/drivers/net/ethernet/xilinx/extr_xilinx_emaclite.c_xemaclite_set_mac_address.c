
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_local {int dummy; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EBUSY ;
 int memcpy (int ,int ,int ) ;
 struct net_local* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int xemaclite_update_address (struct net_local*,int ) ;

__attribute__((used)) static int xemaclite_set_mac_address(struct net_device *dev, void *address)
{
 struct net_local *lp = netdev_priv(dev);
 struct sockaddr *addr = address;

 if (netif_running(dev))
  return -EBUSY;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 xemaclite_update_address(lp, dev->dev_addr);
 return 0;
}
