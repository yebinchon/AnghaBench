
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; int protocol; } ;
struct TYPE_3__ {short rx_bytes; int rx_packets; int rx_errors; int rx_length_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct epic_private {int cur_rx; int dirty_rx; TYPE_2__* rx_ring; int rx_buf_sz; int pci_dev; struct sk_buff** rx_skbuff; } ;
struct TYPE_4__ {int rxstatus; int bufaddr; } ;


 int DescOwn ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int debug ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 void* netdev_alloc_skb (struct net_device*,short) ;
 int netdev_dbg (struct net_device*,char*,int,...) ;
 int netdev_err (struct net_device*,char*,int,short) ;
 struct epic_private* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 short rx_copybreak ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,short) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int epic_rx(struct net_device *dev, int budget)
{
 struct epic_private *ep = netdev_priv(dev);
 int entry = ep->cur_rx % RX_RING_SIZE;
 int rx_work_limit = ep->dirty_rx + RX_RING_SIZE - ep->cur_rx;
 int work_done = 0;

 if (debug > 4)
  netdev_dbg(dev, " In epic_rx(), entry %d %8.8x.\n", entry,
      ep->rx_ring[entry].rxstatus);

 if (rx_work_limit > budget)
  rx_work_limit = budget;


 while ((ep->rx_ring[entry].rxstatus & DescOwn) == 0) {
  int status = ep->rx_ring[entry].rxstatus;

  if (debug > 4)
   netdev_dbg(dev, "  epic_rx() status was %8.8x.\n",
       status);
  if (--rx_work_limit < 0)
   break;
  if (status & 0x2006) {
   if (debug > 2)
    netdev_dbg(dev, "epic_rx() error status was %8.8x.\n",
        status);
   if (status & 0x2000) {
    netdev_warn(dev, "Oversized Ethernet frame spanned multiple buffers, status %4.4x!\n",
         status);
    dev->stats.rx_length_errors++;
   } else if (status & 0x0006)

    dev->stats.rx_errors++;
  } else {


   short pkt_len = (status >> 16) - 4;
   struct sk_buff *skb;

   if (pkt_len > PKT_BUF_SZ - 4) {
    netdev_err(dev, "Oversized Ethernet frame, status %x %d bytes.\n",
        status, pkt_len);
    pkt_len = 1514;
   }


   if (pkt_len < rx_copybreak &&
       (skb = netdev_alloc_skb(dev, pkt_len + 2)) != ((void*)0)) {
    skb_reserve(skb, 2);
    pci_dma_sync_single_for_cpu(ep->pci_dev,
           ep->rx_ring[entry].bufaddr,
           ep->rx_buf_sz,
           PCI_DMA_FROMDEVICE);
    skb_copy_to_linear_data(skb, ep->rx_skbuff[entry]->data, pkt_len);
    skb_put(skb, pkt_len);
    pci_dma_sync_single_for_device(ep->pci_dev,
              ep->rx_ring[entry].bufaddr,
              ep->rx_buf_sz,
              PCI_DMA_FROMDEVICE);
   } else {
    pci_unmap_single(ep->pci_dev,
     ep->rx_ring[entry].bufaddr,
     ep->rx_buf_sz, PCI_DMA_FROMDEVICE);
    skb_put(skb = ep->rx_skbuff[entry], pkt_len);
    ep->rx_skbuff[entry] = ((void*)0);
   }
   skb->protocol = eth_type_trans(skb, dev);
   netif_receive_skb(skb);
   dev->stats.rx_packets++;
   dev->stats.rx_bytes += pkt_len;
  }
  work_done++;
  entry = (++ep->cur_rx) % RX_RING_SIZE;
 }


 for (; ep->cur_rx - ep->dirty_rx > 0; ep->dirty_rx++) {
  entry = ep->dirty_rx % RX_RING_SIZE;
  if (ep->rx_skbuff[entry] == ((void*)0)) {
   struct sk_buff *skb;
   skb = ep->rx_skbuff[entry] = netdev_alloc_skb(dev, ep->rx_buf_sz + 2);
   if (skb == ((void*)0))
    break;
   skb_reserve(skb, 2);
   ep->rx_ring[entry].bufaddr = pci_map_single(ep->pci_dev,
    skb->data, ep->rx_buf_sz, PCI_DMA_FROMDEVICE);
   work_done++;
  }

  ep->rx_ring[entry].rxstatus = DescOwn;
 }
 return work_done;
}
