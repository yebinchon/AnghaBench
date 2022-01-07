
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct board_info {int lock; } ;
typedef int netdev_features_t ;


 int DM9000_RCSR ;
 int NETIF_F_RXCSUM ;
 int RCSR_CSUM ;
 int iow (struct board_info*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_features(struct net_device *dev,
 netdev_features_t features)
{
 struct board_info *dm = to_dm9000_board(dev);
 netdev_features_t changed = dev->features ^ features;
 unsigned long flags;

 if (!(changed & NETIF_F_RXCSUM))
  return 0;

 spin_lock_irqsave(&dm->lock, flags);
 iow(dm, DM9000_RCSR, (features & NETIF_F_RXCSUM) ? RCSR_CSUM : 0);
 spin_unlock_irqrestore(&dm->lock, flags);

 return 0;
}
