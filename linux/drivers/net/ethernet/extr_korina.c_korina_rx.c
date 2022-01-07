
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; int protocol; } ;
struct TYPE_3__ {scalar_t__ rx_bytes; int multicast; int rx_packets; int rx_frame_errors; int rx_fifo_errors; int rx_length_errors; int rx_crc_errors; int rx_dropped; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct korina_private {size_t rx_next_done; struct sk_buff** rx_skb; int dma_halt_cnt; TYPE_2__* rx_dma_regs; struct dma_desc* rd_ring; int napi; } ;
struct dma_desc {scalar_t__ devcs; int control; void* ca; } ;
struct TYPE_4__ {int dmas; } ;


 void* CPHYSADDR (scalar_t__) ;
 int DMA_COUNT (int) ;
 int DMA_DESC_COD ;
 int DMA_DESC_IOD ;
 scalar_t__ DMA_STAT_DONE ;
 scalar_t__ DMA_STAT_ERR ;
 scalar_t__ DMA_STAT_HALT ;
 scalar_t__ ETH_RX_CES ;
 scalar_t__ ETH_RX_CRC ;
 scalar_t__ ETH_RX_CV ;
 scalar_t__ ETH_RX_LD ;
 scalar_t__ ETH_RX_LE ;
 scalar_t__ ETH_RX_MP ;
 scalar_t__ ETH_RX_OVR ;
 scalar_t__ ETH_RX_ROK ;
 int KORINA_RBSIZE ;
 int KORINA_RDS_MASK ;
 scalar_t__ RCVPKT_LENGTH (scalar_t__) ;
 int dma_cache_inv (unsigned long,scalar_t__) ;
 int dma_cache_wback (scalar_t__,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int korina_chain_rx (struct korina_private*,struct dma_desc*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 scalar_t__ readl (int *) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int writel (scalar_t__,int *) ;

__attribute__((used)) static int korina_rx(struct net_device *dev, int limit)
{
 struct korina_private *lp = netdev_priv(dev);
 struct dma_desc *rd = &lp->rd_ring[lp->rx_next_done];
 struct sk_buff *skb, *skb_new;
 u8 *pkt_buf;
 u32 devcs, pkt_len, dmas;
 int count;

 dma_cache_inv((u32)rd, sizeof(*rd));

 for (count = 0; count < limit; count++) {
  skb = lp->rx_skb[lp->rx_next_done];
  skb_new = ((void*)0);

  devcs = rd->devcs;

  if ((KORINA_RBSIZE - (u32)DMA_COUNT(rd->control)) == 0)
   break;




  if (!(devcs & ETH_RX_LD))
   goto next;

  if (!(devcs & ETH_RX_ROK)) {

   dev->stats.rx_errors++;
   dev->stats.rx_dropped++;
   if (devcs & ETH_RX_CRC)
    dev->stats.rx_crc_errors++;
   if (devcs & ETH_RX_LE)
    dev->stats.rx_length_errors++;
   if (devcs & ETH_RX_OVR)
    dev->stats.rx_fifo_errors++;
   if (devcs & ETH_RX_CV)
    dev->stats.rx_frame_errors++;
   if (devcs & ETH_RX_CES)
    dev->stats.rx_frame_errors++;

   goto next;
  }

  pkt_len = RCVPKT_LENGTH(devcs);



  pkt_buf = (u8 *)lp->rx_skb[lp->rx_next_done]->data;


  dma_cache_inv((unsigned long)pkt_buf, pkt_len - 4);


  skb_new = netdev_alloc_skb_ip_align(dev, KORINA_RBSIZE);

  if (!skb_new)
   break;

  skb_put(skb, pkt_len - 4);
  skb->protocol = eth_type_trans(skb, dev);


  napi_gro_receive(&lp->napi, skb);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += pkt_len;


  if (devcs & ETH_RX_MP)
   dev->stats.multicast++;

  lp->rx_skb[lp->rx_next_done] = skb_new;

next:
  rd->devcs = 0;


  if (skb_new)
   rd->ca = CPHYSADDR(skb_new->data);
  else
   rd->ca = CPHYSADDR(skb->data);

  rd->control = DMA_COUNT(KORINA_RBSIZE) |
   DMA_DESC_COD | DMA_DESC_IOD;
  lp->rd_ring[(lp->rx_next_done - 1) &
   KORINA_RDS_MASK].control &=
   ~DMA_DESC_COD;

  lp->rx_next_done = (lp->rx_next_done + 1) & KORINA_RDS_MASK;
  dma_cache_wback((u32)rd, sizeof(*rd));
  rd = &lp->rd_ring[lp->rx_next_done];
  writel(~DMA_STAT_DONE, &lp->rx_dma_regs->dmas);
 }

 dmas = readl(&lp->rx_dma_regs->dmas);

 if (dmas & DMA_STAT_HALT) {
  writel(~(DMA_STAT_HALT | DMA_STAT_ERR),
    &lp->rx_dma_regs->dmas);

  lp->dma_halt_cnt++;
  rd->devcs = 0;
  skb = lp->rx_skb[lp->rx_next_done];
  rd->ca = CPHYSADDR(skb->data);
  dma_cache_wback((u32)rd, sizeof(*rd));
  korina_chain_rx(lp, rd);
 }

 return count;
}
