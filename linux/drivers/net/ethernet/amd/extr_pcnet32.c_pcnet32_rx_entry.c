
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; scalar_t__ len; scalar_t__ data; } ;
struct pcnet32_rx_head {int base; int msg_length; int status; } ;
struct pcnet32_private {int * rx_dma_addr; int pci_dev; struct sk_buff** rx_skbuff; } ;
struct TYPE_2__ {int rx_packets; int rx_bytes; int rx_dropped; int rx_errors; int rx_fifo_errors; int rx_crc_errors; int rx_over_errors; int rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int dma_addr_t ;


 scalar_t__ NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 short PKT_BUF_SIZE ;
 scalar_t__ PKT_BUF_SKB ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int drv ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int netif_err (struct pcnet32_private*,int ,struct net_device*,char*,...) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,short,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,short,int ) ;
 int pci_map_single (int ,scalar_t__,short,int ) ;
 int pci_unmap_single (int ,int ,short,int ) ;
 short rx_copybreak ;
 int rx_err ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,short) ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pcnet32_rx_entry(struct net_device *dev,
        struct pcnet32_private *lp,
        struct pcnet32_rx_head *rxp,
        int entry)
{
 int status = (short)le16_to_cpu(rxp->status) >> 8;
 int rx_in_place = 0;
 struct sk_buff *skb;
 short pkt_len;

 if (status != 0x03) {






  if (status & 0x01)
   dev->stats.rx_errors++;
  if (status & 0x20)
   dev->stats.rx_frame_errors++;
  if (status & 0x10)
   dev->stats.rx_over_errors++;
  if (status & 0x08)
   dev->stats.rx_crc_errors++;
  if (status & 0x04)
   dev->stats.rx_fifo_errors++;
  return;
 }

 pkt_len = (le32_to_cpu(rxp->msg_length) & 0xfff) - 4;


 if (unlikely(pkt_len > PKT_BUF_SIZE)) {
  netif_err(lp, drv, dev, "Impossible packet size %d!\n",
     pkt_len);
  dev->stats.rx_errors++;
  return;
 }
 if (pkt_len < 60) {
  netif_err(lp, rx_err, dev, "Runt packet!\n");
  dev->stats.rx_errors++;
  return;
 }

 if (pkt_len > rx_copybreak) {
  struct sk_buff *newskb;
  dma_addr_t new_dma_addr;

  newskb = netdev_alloc_skb(dev, PKT_BUF_SKB);




  if (newskb) {
   skb_reserve(newskb, NET_IP_ALIGN);
   new_dma_addr = pci_map_single(lp->pci_dev,
            newskb->data,
            PKT_BUF_SIZE,
            PCI_DMA_FROMDEVICE);
   if (pci_dma_mapping_error(lp->pci_dev, new_dma_addr)) {
    netif_err(lp, rx_err, dev,
       "DMA mapping error.\n");
    dev_kfree_skb(newskb);
    skb = ((void*)0);
   } else {
    skb = lp->rx_skbuff[entry];
    pci_unmap_single(lp->pci_dev,
       lp->rx_dma_addr[entry],
       PKT_BUF_SIZE,
       PCI_DMA_FROMDEVICE);
    skb_put(skb, pkt_len);
    lp->rx_skbuff[entry] = newskb;
    lp->rx_dma_addr[entry] = new_dma_addr;
    rxp->base = cpu_to_le32(new_dma_addr);
    rx_in_place = 1;
   }
  } else
   skb = ((void*)0);
 } else
  skb = netdev_alloc_skb(dev, pkt_len + NET_IP_ALIGN);

 if (skb == ((void*)0)) {
  dev->stats.rx_dropped++;
  return;
 }
 if (!rx_in_place) {
  skb_reserve(skb, NET_IP_ALIGN);
  skb_put(skb, pkt_len);
  pci_dma_sync_single_for_cpu(lp->pci_dev,
         lp->rx_dma_addr[entry],
         pkt_len,
         PCI_DMA_FROMDEVICE);
  skb_copy_to_linear_data(skb,
     (unsigned char *)(lp->rx_skbuff[entry]->data),
     pkt_len);
  pci_dma_sync_single_for_device(lp->pci_dev,
            lp->rx_dma_addr[entry],
            pkt_len,
            PCI_DMA_FROMDEVICE);
 }
 dev->stats.rx_bytes += skb->len;
 skb->protocol = eth_type_trans(skb, dev);
 netif_receive_skb(skb);
 dev->stats.rx_packets++;
}
