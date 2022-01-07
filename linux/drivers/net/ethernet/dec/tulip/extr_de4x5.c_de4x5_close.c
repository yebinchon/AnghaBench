
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int irq; int name; int base_addr; } ;
struct de4x5_private {int state; } ;
typedef int s32 ;


 int CLOSED ;
 int DE4X5_STS ;
 int DEBUG_CLOSE ;
 int DISABLE_IRQs ;
 int SLEEP ;
 int STOP_DE4X5 ;
 int de4x5_debug ;
 int de4x5_free_rx_buffs (struct net_device*) ;
 int de4x5_free_tx_buffs (struct net_device*) ;
 int disable_ast (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*,int ,int ) ;
 int yawn (struct net_device*,int ) ;

__attribute__((used)) static int
de4x5_close(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 imr, omr;

    disable_ast(dev);

    netif_stop_queue(dev);

    if (de4x5_debug & DEBUG_CLOSE) {
 printk("%s: Shutting down ethercard, status was %8.8x.\n",
        dev->name, inl(DE4X5_STS));
    }




    DISABLE_IRQs;
    STOP_DE4X5;


    free_irq(dev->irq, dev);
    lp->state = CLOSED;


    de4x5_free_rx_buffs(dev);
    de4x5_free_tx_buffs(dev);


    yawn(dev, SLEEP);

    return 0;
}
