
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct niu {int lock; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct niu* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int niu_enable_rx_mac (struct niu*,int) ;
 int niu_set_primary_mac (struct niu*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int niu_set_mac_addr(struct net_device *dev, void *p)
{
 struct niu *np = netdev_priv(dev);
 struct sockaddr *addr = p;
 unsigned long flags;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 if (!netif_running(dev))
  return 0;

 spin_lock_irqsave(&np->lock, flags);
 niu_enable_rx_mac(np, 0);
 niu_set_primary_mac(np, dev->dev_addr);
 niu_enable_rx_mac(np, 1);
 spin_unlock_irqrestore(&np->lock, flags);

 return 0;
}
