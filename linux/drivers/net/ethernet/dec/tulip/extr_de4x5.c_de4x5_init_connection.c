
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {scalar_t__ media; scalar_t__ c_media; int tx_enable; int lock; } ;


 int DE4X5_TPD ;
 int POLL_DEMAND ;
 int de4x5_dbg_media (struct net_device*) ;
 int de4x5_rst_desc_ring (struct net_device*) ;
 int de4x5_setup_intr (struct net_device*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outl (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
de4x5_init_connection(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    u_long flags = 0;

    if (lp->media != lp->c_media) {
        de4x5_dbg_media(dev);
 lp->c_media = lp->media;
    }

    spin_lock_irqsave(&lp->lock, flags);
    de4x5_rst_desc_ring(dev);
    de4x5_setup_intr(dev);
    lp->tx_enable = 1;
    spin_unlock_irqrestore(&lp->lock, flags);
    outl(POLL_DEMAND, DE4X5_TPD);

    netif_wake_queue(dev);
}
