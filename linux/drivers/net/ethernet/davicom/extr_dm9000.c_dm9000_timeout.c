
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct board_info {int in_timeout; int lock; int io_addr; } ;


 int dm9000_init_dm9000 (struct net_device*) ;
 int dm9000_unmask_interrupts (struct board_info*) ;
 struct board_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void dm9000_timeout(struct net_device *dev)
{
 struct board_info *db = netdev_priv(dev);
 u8 reg_save;
 unsigned long flags;


 spin_lock_irqsave(&db->lock, flags);
 db->in_timeout = 1;
 reg_save = readb(db->io_addr);

 netif_stop_queue(dev);
 dm9000_init_dm9000(dev);
 dm9000_unmask_interrupts(db);

 netif_trans_update(dev);
 netif_wake_queue(dev);


 writeb(reg_save, db->io_addr);
 db->in_timeout = 0;
 spin_unlock_irqrestore(&db->lock, flags);
}
