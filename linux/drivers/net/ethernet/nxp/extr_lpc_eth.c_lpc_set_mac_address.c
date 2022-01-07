
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct netdata_local {int lock; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int __lpc_set_mac (struct netdata_local*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lpc_set_mac_address(struct net_device *ndev, void *p)
{
 struct sockaddr *addr = p;
 struct netdata_local *pldat = netdev_priv(ndev);
 unsigned long flags;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(ndev->dev_addr, addr->sa_data, ETH_ALEN);

 spin_lock_irqsave(&pldat->lock, flags);


 __lpc_set_mac(pldat, ndev->dev_addr);

 spin_unlock_irqrestore(&pldat->lock, flags);

 return 0;
}
