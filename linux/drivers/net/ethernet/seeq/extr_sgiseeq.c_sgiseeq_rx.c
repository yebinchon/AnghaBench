
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned char* data; int protocol; } ;
struct TYPE_6__ {int cntinfo; int pbuf; } ;
struct sgiseeq_rx_desc {TYPE_3__ rdma; struct sk_buff* skb; } ;
struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {size_t rx_new; struct sgiseeq_rx_desc* rx_desc; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; int dev_addr; } ;
struct hpc3_ethregs {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int HPCDMA_BCNT ;
 int HPCDMA_EOR ;
 int HPCDMA_OWN ;
 size_t NEXT_RX (size_t) ;
 int PKT_BUF_SZ ;
 size_t PREV_RX (size_t) ;
 int RCNTINFO_INIT ;
 unsigned char SEEQ_RSTAT_FIG ;
 int dma_map_single (int ,unsigned char*,int,int ) ;
 int dma_sync_desc_cpu (struct net_device*,struct sgiseeq_rx_desc*) ;
 int dma_sync_desc_dev (struct net_device*,struct sgiseeq_rx_desc*) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ether_addr_equal (unsigned char*,int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int record_rx_errors (struct net_device*,unsigned char) ;
 int rx_copybreak ;
 int rx_maybe_restart (struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline void sgiseeq_rx(struct net_device *dev, struct sgiseeq_private *sp,
         struct hpc3_ethregs *hregs,
         struct sgiseeq_regs *sregs)
{
 struct sgiseeq_rx_desc *rd;
 struct sk_buff *skb = ((void*)0);
 struct sk_buff *newskb;
 unsigned char pkt_status;
 int len = 0;
 unsigned int orig_end = PREV_RX(sp->rx_new);


 rd = &sp->rx_desc[sp->rx_new];
 dma_sync_desc_cpu(dev, rd);
 while (!(rd->rdma.cntinfo & HPCDMA_OWN)) {
  len = PKT_BUF_SZ - (rd->rdma.cntinfo & HPCDMA_BCNT) - 3;
  dma_unmap_single(dev->dev.parent, rd->rdma.pbuf,
     PKT_BUF_SZ, DMA_FROM_DEVICE);
  pkt_status = rd->skb->data[len];
  if (pkt_status & SEEQ_RSTAT_FIG) {


   if (!ether_addr_equal(rd->skb->data + 6, dev->dev_addr)) {
    if (len > rx_copybreak) {
     skb = rd->skb;
     newskb = netdev_alloc_skb(dev, PKT_BUF_SZ);
     if (!newskb) {
      newskb = skb;
      skb = ((void*)0);
      goto memory_squeeze;
     }
     skb_reserve(newskb, 2);
    } else {
     skb = netdev_alloc_skb_ip_align(dev, len);
     if (skb)
      skb_copy_to_linear_data(skb, rd->skb->data, len);

     newskb = rd->skb;
    }
memory_squeeze:
    if (skb) {
     skb_put(skb, len);
     skb->protocol = eth_type_trans(skb, dev);
     netif_rx(skb);
     dev->stats.rx_packets++;
     dev->stats.rx_bytes += len;
    } else {
     dev->stats.rx_dropped++;
    }
   } else {

    newskb = rd->skb;
   }
  } else {
   record_rx_errors(dev, pkt_status);
   newskb = rd->skb;
  }
  rd->skb = newskb;
  rd->rdma.pbuf = dma_map_single(dev->dev.parent,
            newskb->data - 2,
            PKT_BUF_SZ, DMA_FROM_DEVICE);


  rd->rdma.cntinfo = RCNTINFO_INIT;
  sp->rx_new = NEXT_RX(sp->rx_new);
  dma_sync_desc_dev(dev, rd);
  rd = &sp->rx_desc[sp->rx_new];
  dma_sync_desc_cpu(dev, rd);
 }
 dma_sync_desc_cpu(dev, &sp->rx_desc[orig_end]);
 sp->rx_desc[orig_end].rdma.cntinfo &= ~(HPCDMA_EOR);
 dma_sync_desc_dev(dev, &sp->rx_desc[orig_end]);
 dma_sync_desc_cpu(dev, &sp->rx_desc[PREV_RX(sp->rx_new)]);
 sp->rx_desc[PREV_RX(sp->rx_new)].rdma.cntinfo |= HPCDMA_EOR;
 dma_sync_desc_dev(dev, &sp->rx_desc[PREV_RX(sp->rx_new)]);
 rx_maybe_restart(sp, hregs, sregs);
}
