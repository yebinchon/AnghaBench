
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; scalar_t__ if_port; int irq; int name; } ;
struct corkscrew_private {int ** tx_skbuff; scalar_t__ full_bus_master_tx; int ** rx_skbuff; scalar_t__ full_bus_master_rx; int timer; } ;


 scalar_t__ DownListPtr ;
 scalar_t__ EL3_CMD ;
 scalar_t__ EL3_STATUS ;
 int RX_RING_SIZE ;
 int RxDisable ;
 int SetIntrEnb ;
 int StatsDisable ;
 int StopCoax ;
 int TX_RING_SIZE ;
 int TxDisable ;
 scalar_t__ TxStatus ;
 scalar_t__ UpListPtr ;
 scalar_t__ XCVR_10base2 ;
 int corkscrew_debug ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb (int *) ;
 int free_irq (int ,struct net_device*) ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 struct corkscrew_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pr_debug (char*,int ,int ,int ,...) ;
 int queued_packet ;
 int rx_copy ;
 int rx_nocopy ;
 int update_stats (int,struct net_device*) ;

__attribute__((used)) static int corkscrew_close(struct net_device *dev)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 int ioaddr = dev->base_addr;
 int i;

 netif_stop_queue(dev);

 if (corkscrew_debug > 1) {
  pr_debug("%s: corkscrew_close() status %4.4x, Tx status %2.2x.\n",
       dev->name, inw(ioaddr + EL3_STATUS),
       inb(ioaddr + TxStatus));
  pr_debug("%s: corkscrew close stats: rx_nocopy %d rx_copy %d tx_queued %d.\n",
   dev->name, rx_nocopy, rx_copy, queued_packet);
 }

 del_timer_sync(&vp->timer);


 outw(StatsDisable, ioaddr + EL3_CMD);


 outw(RxDisable, ioaddr + EL3_CMD);
 outw(TxDisable, ioaddr + EL3_CMD);

 if (dev->if_port == XCVR_10base2)

  outw(StopCoax, ioaddr + EL3_CMD);

 free_irq(dev->irq, dev);

 outw(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);

 update_stats(ioaddr, dev);
 if (vp->full_bus_master_rx) {
  outl(0, ioaddr + UpListPtr);
  for (i = 0; i < RX_RING_SIZE; i++)
   if (vp->rx_skbuff[i]) {
    dev_kfree_skb(vp->rx_skbuff[i]);
    vp->rx_skbuff[i] = ((void*)0);
   }
 }
 if (vp->full_bus_master_tx) {
  outl(0, ioaddr + DownListPtr);
  for (i = 0; i < TX_RING_SIZE; i++)
   if (vp->tx_skbuff[i]) {
    dev_kfree_skb(vp->tx_skbuff[i]);
    vp->tx_skbuff[i] = ((void*)0);
   }
 }

 return 0;
}
