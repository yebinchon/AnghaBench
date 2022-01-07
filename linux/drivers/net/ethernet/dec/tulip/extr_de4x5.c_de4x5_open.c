
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int irq; int base_addr; } ;
struct de4x5_private {int rxRingSize; int interrupt; int state; int adapter_name; int lock; } ;
typedef int s32 ;


 int CLOSED ;
 int DE4X5_BMR ;
 int DE4X5_IMR ;
 int DE4X5_OMR ;
 int DE4X5_SICR ;
 int DE4X5_SIGR ;
 int DE4X5_SISR ;
 int DE4X5_STRR ;
 int DE4X5_STS ;
 int DEBUG_OPEN ;
 int EAGAIN ;
 int IRQF_SHARED ;
 int OPEN ;
 int SLEEP ;
 int START_DE4X5 ;
 int UNMASK_INTERRUPTS ;
 int WAKEUP ;
 int * de4x5_alloc_rx_buff (struct net_device*,int,int ) ;
 int de4x5_dbg_open (struct net_device*) ;
 int de4x5_debug ;
 int de4x5_free_rx_buffs (struct net_device*) ;
 int de4x5_free_tx_buffs (struct net_device*) ;
 int de4x5_init (struct net_device*) ;
 int de4x5_interrupt ;
 int de4x5_setup_intr (struct net_device*) ;
 int disable_ast (struct net_device*) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int printk (char*,...) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_init (int *) ;
 int yawn (struct net_device*,int ) ;

__attribute__((used)) static int
de4x5_open(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int i, status = 0;
    s32 omr;


    for (i=0; i<lp->rxRingSize; i++) {
 if (de4x5_alloc_rx_buff(dev, i, 0) == ((void*)0)) {
     de4x5_free_rx_buffs(dev);
     return -EAGAIN;
 }
    }




    yawn(dev, WAKEUP);




    status = de4x5_init(dev);
    spin_lock_init(&lp->lock);
    lp->state = OPEN;
    de4x5_dbg_open(dev);

    if (request_irq(dev->irq, de4x5_interrupt, IRQF_SHARED,
                                       lp->adapter_name, dev)) {
 printk("de4x5_open(): Requested IRQ%d is busy - attempting FAST/SHARE...", dev->irq);
 if (request_irq(dev->irq, de4x5_interrupt, IRQF_SHARED,
                                lp->adapter_name, dev)) {
     printk("\n              Cannot get IRQ- reconfigure your hardware.\n");
     disable_ast(dev);
     de4x5_free_rx_buffs(dev);
     de4x5_free_tx_buffs(dev);
     yawn(dev, SLEEP);
     lp->state = CLOSED;
     return -EAGAIN;
 } else {
     printk("\n              Succeeded, but you should reconfigure your hardware to avoid this.\n");
     printk("WARNING: there may be IRQ related problems in heavily loaded systems.\n");
 }
    }

    lp->interrupt = UNMASK_INTERRUPTS;
    netif_trans_update(dev);

    START_DE4X5;

    de4x5_setup_intr(dev);

    if (de4x5_debug & DEBUG_OPEN) {
 printk("\tsts:  0x%08x\n", inl(DE4X5_STS));
 printk("\tbmr:  0x%08x\n", inl(DE4X5_BMR));
 printk("\timr:  0x%08x\n", inl(DE4X5_IMR));
 printk("\tomr:  0x%08x\n", inl(DE4X5_OMR));
 printk("\tsisr: 0x%08x\n", inl(DE4X5_SISR));
 printk("\tsicr: 0x%08x\n", inl(DE4X5_SICR));
 printk("\tstrr: 0x%08x\n", inl(DE4X5_STRR));
 printk("\tsigr: 0x%08x\n", inl(DE4X5_SIGR));
    }

    return status;
}
