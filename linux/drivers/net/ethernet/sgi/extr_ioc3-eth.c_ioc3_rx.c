
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; int protocol; } ;
struct TYPE_3__ {int rx_bytes; int rx_frame_errors; int rx_crc_errors; int rx_errors; int rx_packets; int rx_dropped; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct ioc3_private {unsigned long* rxr; int rx_ci; int rx_pi; TYPE_2__* regs; struct sk_buff** rx_skbs; int dma_dev; } ;
struct ioc3_erxbuf {scalar_t__ w0; scalar_t__ err; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_4__ {int erpir; } ;


 int DMA_FROM_DEVICE ;
 int ERPIR_ARM ;
 int ERXBUF_BYTECNT_SHIFT ;
 int ERXBUF_CRCERR ;
 int ERXBUF_FRAMERR ;
 int ERXBUF_GOODPKT ;
 int ERXBUF_IPCKSUM_MASK ;
 int ERXBUF_V ;
 int NETIF_F_RXCSUM ;
 int PCI64_ATTR_BAR ;
 int RX_BUF_SIZE ;
 scalar_t__ RX_OFFSET ;
 int RX_RING_MASK ;
 int be32_to_cpu (scalar_t__) ;
 unsigned long cpu_to_be64 (int ) ;
 int dma_unmap_single (int ,unsigned long,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ ioc3_alloc_skb (struct ioc3_private*,struct sk_buff**,struct ioc3_erxbuf**,unsigned long*) ;
 int ioc3_map (unsigned long,int ) ;
 int ioc3_tcpudp_checksum (struct sk_buff*,int,int) ;
 scalar_t__ likely (int) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int writel (int,int *) ;

__attribute__((used)) static inline void ioc3_rx(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct sk_buff *skb, *new_skb;
 int rx_entry, n_entry, len;
 struct ioc3_erxbuf *rxb;
 unsigned long *rxr;
 dma_addr_t d;
 u32 w0, err;

 rxr = ip->rxr;
 rx_entry = ip->rx_ci;
 n_entry = ip->rx_pi;

 skb = ip->rx_skbs[rx_entry];
 rxb = (struct ioc3_erxbuf *)(skb->data - RX_OFFSET);
 w0 = be32_to_cpu(rxb->w0);

 while (w0 & ERXBUF_V) {
  err = be32_to_cpu(rxb->err);
  if (err & ERXBUF_GOODPKT) {
   len = ((w0 >> ERXBUF_BYTECNT_SHIFT) & 0x7ff) - 4;
   skb_put(skb, len);
   skb->protocol = eth_type_trans(skb, dev);

   if (ioc3_alloc_skb(ip, &new_skb, &rxb, &d)) {



    dev->stats.rx_dropped++;
    new_skb = skb;
    d = rxr[rx_entry];
    goto next;
   }

   if (likely(dev->features & NETIF_F_RXCSUM))
    ioc3_tcpudp_checksum(skb,
           w0 & ERXBUF_IPCKSUM_MASK,
           len);

   dma_unmap_single(ip->dma_dev, rxr[rx_entry],
      RX_BUF_SIZE, DMA_FROM_DEVICE);

   netif_rx(skb);

   ip->rx_skbs[rx_entry] = ((void*)0);

   dev->stats.rx_packets++;
   dev->stats.rx_bytes += len;
  } else {




   new_skb = skb;
   d = rxr[rx_entry];
   dev->stats.rx_errors++;
  }
  if (err & ERXBUF_CRCERR)
   dev->stats.rx_crc_errors++;
  if (err & ERXBUF_FRAMERR)
   dev->stats.rx_frame_errors++;

next:
  ip->rx_skbs[n_entry] = new_skb;
  rxr[n_entry] = cpu_to_be64(ioc3_map(d, PCI64_ATTR_BAR));
  rxb->w0 = 0;
  n_entry = (n_entry + 1) & RX_RING_MASK;


  rx_entry = (rx_entry + 1) & RX_RING_MASK;
  skb = ip->rx_skbs[rx_entry];
  rxb = (struct ioc3_erxbuf *)(skb->data - RX_OFFSET);
  w0 = be32_to_cpu(rxb->w0);
 }
 writel((n_entry << 3) | ERPIR_ARM, &ip->regs->erpir);
 ip->rx_pi = n_entry;
 ip->rx_ci = rx_entry;
}
