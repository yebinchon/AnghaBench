
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tulip_private {int cur_rx; int dirty_rx; TYPE_2__* rx_buffers; int pdev; TYPE_1__* rx_ring; } ;
struct sk_buff {int protocol; int head; int data; } ;
struct TYPE_6__ {short rx_bytes; int rx_packets; int rx_fifo_errors; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_3__ stats; int dev; } ;
typedef int s32 ;
struct TYPE_5__ {scalar_t__ mapping; struct sk_buff* skb; } ;
struct TYPE_4__ {int status; int buffer1; } ;


 int DescOwned ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int RxDescCRCError ;
 int RxDescCollisionSeen ;
 int RxDescDescErr ;
 int RxDescRunt ;
 int RxLengthOver2047 ;
 int RxWholePkt ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,scalar_t__,long long,int ,char*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ le32_to_cpu (int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,short) ;
 int netdev_dbg (struct net_device*,char*,int,...) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_rx (struct sk_buff*) ;
 int pci_dma_sync_single_for_cpu (int ,scalar_t__,short,int ) ;
 int pci_dma_sync_single_for_device (int ,scalar_t__,short,int ) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,short) ;
 char* skb_put (struct sk_buff*,short) ;
 int skb_put_data (struct sk_buff*,int ,short) ;
 int skb_reserve (struct sk_buff*,int) ;
 int tulip_debug ;
 short tulip_rx_copybreak ;

__attribute__((used)) static int tulip_rx(struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int entry = tp->cur_rx % RX_RING_SIZE;
 int rx_work_limit = tp->dirty_rx + RX_RING_SIZE - tp->cur_rx;
 int received = 0;

 if (tulip_debug > 4)
  netdev_dbg(dev, "In tulip_rx(), entry %d %08x\n",
      entry, tp->rx_ring[entry].status);

 while ( ! (tp->rx_ring[entry].status & cpu_to_le32(DescOwned))) {
  s32 status = le32_to_cpu(tp->rx_ring[entry].status);
  short pkt_len;

  if (tulip_debug > 5)
   netdev_dbg(dev, "In tulip_rx(), entry %d %08x\n",
       entry, status);
  if (--rx_work_limit < 0)
   break;






  pkt_len = ((status >> 16) & 0x7ff) - 4;






  if ((status & (RxLengthOver2047 |
          RxDescCRCError |
          RxDescCollisionSeen |
          RxDescRunt |
          RxDescDescErr |
          RxWholePkt)) != RxWholePkt ||
      pkt_len > 1518) {
   if ((status & (RxLengthOver2047 |
        RxWholePkt)) != RxWholePkt) {

    if ((status & 0xffff) != 0x7fff) {
     if (tulip_debug > 1)
      netdev_warn(dev,
           "Oversized Ethernet frame spanned multiple buffers, status %08x!\n",
           status);
     dev->stats.rx_length_errors++;
    }
   } else {

    if (tulip_debug > 2)
     netdev_dbg(dev, "Receive error, Rx status %08x\n",
         status);
    dev->stats.rx_errors++;
    if (pkt_len > 1518 ||
        (status & RxDescRunt))
     dev->stats.rx_length_errors++;
    if (status & 0x0004)
     dev->stats.rx_frame_errors++;
    if (status & 0x0002)
     dev->stats.rx_crc_errors++;
    if (status & 0x0001)
     dev->stats.rx_fifo_errors++;
   }
  } else {
   struct sk_buff *skb;



   if (pkt_len < tulip_rx_copybreak &&
       (skb = netdev_alloc_skb(dev, pkt_len + 2)) != ((void*)0)) {
    skb_reserve(skb, 2);
    pci_dma_sync_single_for_cpu(tp->pdev,
           tp->rx_buffers[entry].mapping,
           pkt_len, PCI_DMA_FROMDEVICE);

    skb_copy_to_linear_data(skb, tp->rx_buffers[entry].skb->data,
       pkt_len);
    skb_put(skb, pkt_len);





    pci_dma_sync_single_for_device(tp->pdev,
              tp->rx_buffers[entry].mapping,
              pkt_len, PCI_DMA_FROMDEVICE);
   } else {
    char *temp = skb_put(skb = tp->rx_buffers[entry].skb,
           pkt_len);


    if (tp->rx_buffers[entry].mapping !=
        le32_to_cpu(tp->rx_ring[entry].buffer1)) {
     dev_err(&dev->dev,
      "Internal fault: The skbuff addresses do not match in tulip_rx: %08x vs. %Lx %p / %p\n",
      le32_to_cpu(tp->rx_ring[entry].buffer1),
      (long long)tp->rx_buffers[entry].mapping,
      skb->head, temp);
    }


    pci_unmap_single(tp->pdev, tp->rx_buffers[entry].mapping,
       PKT_BUF_SZ, PCI_DMA_FROMDEVICE);

    tp->rx_buffers[entry].skb = ((void*)0);
    tp->rx_buffers[entry].mapping = 0;
   }
   skb->protocol = eth_type_trans(skb, dev);

   netif_rx(skb);

   dev->stats.rx_packets++;
   dev->stats.rx_bytes += pkt_len;
  }
  received++;
  entry = (++tp->cur_rx) % RX_RING_SIZE;
 }
 return received;
}
