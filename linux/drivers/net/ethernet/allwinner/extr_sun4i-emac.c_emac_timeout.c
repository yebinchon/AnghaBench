
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_board_info {int lock; int dev; } ;


 int dev_err (int ,char*) ;
 int emac_init_device (struct net_device*) ;
 int emac_reset (struct emac_board_info*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_timer (struct emac_board_info*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void emac_timeout(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 unsigned long flags;

 if (netif_msg_timer(db))
  dev_err(db->dev, "tx time out.\n");


 spin_lock_irqsave(&db->lock, flags);

 netif_stop_queue(dev);
 emac_reset(db);
 emac_init_device(dev);

 netif_trans_update(dev);
 netif_wake_queue(dev);


 spin_unlock_irqrestore(&db->lock, flags);
}
