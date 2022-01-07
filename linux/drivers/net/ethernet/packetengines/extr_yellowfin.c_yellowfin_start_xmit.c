
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yellowfin_private {int cur_tx; scalar_t__ dirty_tx; int tx_full; scalar_t__ base; TYPE_1__* tx_ring; int pci_dev; struct sk_buff** tx_skbuff; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int request_cnt; void* dbdma_cmd; void* addr; scalar_t__ result_status; } ;


 int BRANCH_ALWAYS ;
 int BRANCH_IFTRUE ;
 int CMD_STOP ;
 int CMD_TX_PKT ;
 int INTR_ALWAYS ;
 int KERN_DEBUG ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ TX_QUEUE_SIZE ;
 int TX_RING_SIZE ;
 scalar_t__ TxCtrl ;
 void* cpu_to_le32 (int) ;
 scalar_t__ gx_fix ;
 int iowrite32 (int,scalar_t__) ;
 int netdev_printk (int ,struct net_device*,char*,scalar_t__,unsigned int) ;
 struct yellowfin_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_map_single (int ,scalar_t__,int,int ) ;
 scalar_t__ skb_padto (struct sk_buff*,int) ;
 int yellowfin_debug ;

__attribute__((used)) static netdev_tx_t yellowfin_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct yellowfin_private *yp = netdev_priv(dev);
 unsigned entry;
 int len = skb->len;

 netif_stop_queue (dev);





 entry = yp->cur_tx % TX_RING_SIZE;

 if (gx_fix) {
  int cacheline_end = ((unsigned long)skb->data + skb->len) % 32;

  if (cacheline_end > 24 || cacheline_end == 0) {
   len = skb->len + 32 - cacheline_end + 1;
   if (skb_padto(skb, len)) {
    yp->tx_skbuff[entry] = ((void*)0);
    netif_wake_queue(dev);
    return NETDEV_TX_OK;
   }
  }
 }
 yp->tx_skbuff[entry] = skb;
 yp->tx_ring[entry<<1].request_cnt = len;
 yp->tx_ring[entry<<1].addr = cpu_to_le32(pci_map_single(yp->pci_dev,
  skb->data, len, PCI_DMA_TODEVICE));



 yp->cur_tx++;
 {
  unsigned next_entry = yp->cur_tx % TX_RING_SIZE;
  yp->tx_ring[next_entry<<1].dbdma_cmd = cpu_to_le32(CMD_STOP);
 }


 yp->tx_ring[entry<<1].dbdma_cmd =
  cpu_to_le32( ((entry % 6) == 0 ? CMD_TX_PKT|INTR_ALWAYS|BRANCH_IFTRUE :
       CMD_TX_PKT | BRANCH_IFTRUE) | len);





 iowrite32(0x10001000, yp->base + TxCtrl);

 if (yp->cur_tx - yp->dirty_tx < TX_QUEUE_SIZE)
  netif_start_queue (dev);
 else
  yp->tx_full = 1;

 if (yellowfin_debug > 4) {
  netdev_printk(KERN_DEBUG, dev, "Yellowfin transmit frame #%d queued in slot %d\n",
         yp->cur_tx, entry);
 }
 return NETDEV_TX_OK;
}
