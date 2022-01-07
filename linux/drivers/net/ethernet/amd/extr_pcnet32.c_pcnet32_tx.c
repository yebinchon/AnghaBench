
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcnet32_private {unsigned int dirty_tx; unsigned int cur_tx; unsigned int tx_mod_mask; unsigned int tx_ring_size; scalar_t__ tx_full; scalar_t__* tx_dma_addr; TYPE_3__** tx_skbuff; int pci_dev; int dxsuflo; TYPE_1__* tx_ring; } ;
struct TYPE_5__ {int tx_packets; int collisions; int tx_fifo_errors; int tx_window_errors; int tx_carrier_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_4__ {int misc; scalar_t__ base; int status; } ;


 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (TYPE_3__*) ;
 int drv ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_err (struct pcnet32_private*,int ,struct net_device*,char*,...) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int tx_err ;

__attribute__((used)) static int pcnet32_tx(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned int dirty_tx = lp->dirty_tx;
 int delta;
 int must_restart = 0;

 while (dirty_tx != lp->cur_tx) {
  int entry = dirty_tx & lp->tx_mod_mask;
  int status = (short)le16_to_cpu(lp->tx_ring[entry].status);

  if (status < 0)
   break;

  lp->tx_ring[entry].base = 0;

  if (status & 0x4000) {

   int err_status = le32_to_cpu(lp->tx_ring[entry].misc);
   dev->stats.tx_errors++;
   netif_err(lp, tx_err, dev,
      "Tx error status=%04x err_status=%08x\n",
      status, err_status);
   if (err_status & 0x04000000)
    dev->stats.tx_aborted_errors++;
   if (err_status & 0x08000000)
    dev->stats.tx_carrier_errors++;
   if (err_status & 0x10000000)
    dev->stats.tx_window_errors++;

   if (err_status & 0x40000000) {
    dev->stats.tx_fifo_errors++;


    netif_err(lp, tx_err, dev, "Tx FIFO error!\n");
    must_restart = 1;
   }
  } else {
   if (status & 0x1800)
    dev->stats.collisions++;
   dev->stats.tx_packets++;
  }


  if (lp->tx_skbuff[entry]) {
   pci_unmap_single(lp->pci_dev,
      lp->tx_dma_addr[entry],
      lp->tx_skbuff[entry]->
      len, PCI_DMA_TODEVICE);
   dev_kfree_skb_any(lp->tx_skbuff[entry]);
   lp->tx_skbuff[entry] = ((void*)0);
   lp->tx_dma_addr[entry] = 0;
  }
  dirty_tx++;
 }

 delta = (lp->cur_tx - dirty_tx) & (lp->tx_mod_mask + lp->tx_ring_size);
 if (delta > lp->tx_ring_size) {
  netif_err(lp, drv, dev, "out-of-sync dirty pointer, %d vs. %d, full=%d\n",
     dirty_tx, lp->cur_tx, lp->tx_full);
  dirty_tx += lp->tx_ring_size;
  delta -= lp->tx_ring_size;
 }

 if (lp->tx_full &&
     netif_queue_stopped(dev) &&
     delta < lp->tx_ring_size - 2) {

  lp->tx_full = 0;
  netif_wake_queue(dev);
 }
 lp->dirty_tx = dirty_tx;

 return must_restart;
}
