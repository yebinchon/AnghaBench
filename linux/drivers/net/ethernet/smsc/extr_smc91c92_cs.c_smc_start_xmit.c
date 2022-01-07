
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct smc_private {int lock; scalar_t__ rx_ovrn; int packets_waiting; struct sk_buff* saved_skb; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int tx_dropped; int tx_aborted_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 short IM_ALLOC_INT ;
 unsigned int INTERRUPT ;
 int MC_ALLOC ;
 short MC_RESET ;
 short MEMORY_WAIT_TIME ;
 unsigned int MMU_CMD ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int SMC_SELECT_BANK (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 short inw (unsigned int) ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (short,unsigned int) ;
 int smc_hardware_send_packet (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t smc_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
    struct smc_private *smc = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    u_short num_pages;
    short time_out, ir;
    unsigned long flags;

    netif_stop_queue(dev);

    netdev_dbg(dev, "smc_start_xmit(length = %d) called, status %04x\n",
        skb->len, inw(ioaddr + 2));

    if (smc->saved_skb) {

 dev->stats.tx_aborted_errors++;
 netdev_dbg(dev, "Internal error -- sent packet while busy\n");
 return NETDEV_TX_BUSY;
    }
    smc->saved_skb = skb;

    num_pages = skb->len >> 8;

    if (num_pages > 7) {
 netdev_err(dev, "Far too big packet error: %d pages\n", num_pages);
 dev_kfree_skb (skb);
 smc->saved_skb = ((void*)0);
 dev->stats.tx_dropped++;
 return NETDEV_TX_OK;
    }

    smc->packets_waiting++;

    spin_lock_irqsave(&smc->lock, flags);
    SMC_SELECT_BANK(2);


    if (smc->rx_ovrn) {
 outw(MC_RESET, ioaddr + MMU_CMD);
 smc->rx_ovrn = 0;
    }


    outw(MC_ALLOC | num_pages, ioaddr + MMU_CMD);
    for (time_out = MEMORY_WAIT_TIME; time_out >= 0; time_out--) {
 ir = inw(ioaddr+INTERRUPT);
 if (ir & IM_ALLOC_INT) {

     outw((ir&0xff00) | IM_ALLOC_INT, ioaddr + INTERRUPT);
     smc_hardware_send_packet(dev);
     spin_unlock_irqrestore(&smc->lock, flags);
     return NETDEV_TX_OK;
 }
    }


    netdev_dbg(dev, "memory allocation deferred.\n");
    outw((IM_ALLOC_INT << 8) | (ir & 0xff00), ioaddr + INTERRUPT);
    spin_unlock_irqrestore(&smc->lock, flags);

    return NETDEV_TX_OK;
}
