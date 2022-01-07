
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int data; int protocol; } ;
struct ravb_private {int* cur_rx; int* num_rx_ring; int* dirty_rx; int tstamp_rx_ctrl; struct sk_buff*** rx_skb; scalar_t__ rx_buf_sz; struct ravb_ex_rx_desc** rx_ring; int * napi; struct net_device_stats* stats; } ;
struct ravb_ex_rx_desc {scalar_t__ die_dt; int msc; int dptr; void* ds_cc; int ts_n; int ts_sl; void* ts_sh; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_missed_errors; int rx_length_errors; int rx_frame_errors; int rx_crc_errors; int rx_errors; int multicast; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {int features; TYPE_1__ dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 scalar_t__ DT_FEMPTY ;
 int MSC_CEEF ;
 int MSC_CRC ;
 int MSC_MC ;
 int MSC_RFE ;
 int MSC_RTLF ;
 int MSC_RTSF ;
 int NETIF_F_RXCSUM ;
 scalar_t__ RAVB_ALIGN ;
 int RAVB_NC ;
 int RAVB_RXTSTAMP_TYPE ;
 int RAVB_RXTSTAMP_TYPE_V2_L2_EVENT ;
 int RX_DS ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_rmb () ;
 int dma_unmap_single (int ,int,scalar_t__,int ) ;
 int dma_wmb () ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le16_to_cpu (void*) ;
 int le32_to_cpu (int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int min (int,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_rx_csum (struct sk_buff*) ;
 int ravb_set_buffer_align (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int timespec64_to_ktime (struct timespec64) ;

__attribute__((used)) static bool ravb_rx(struct net_device *ndev, int *quota, int q)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int entry = priv->cur_rx[q] % priv->num_rx_ring[q];
 int boguscnt = (priv->dirty_rx[q] + priv->num_rx_ring[q]) -
   priv->cur_rx[q];
 struct net_device_stats *stats = &priv->stats[q];
 struct ravb_ex_rx_desc *desc;
 struct sk_buff *skb;
 dma_addr_t dma_addr;
 struct timespec64 ts;
 u8 desc_status;
 u16 pkt_len;
 int limit;

 boguscnt = min(boguscnt, *quota);
 limit = boguscnt;
 desc = &priv->rx_ring[q][entry];
 while (desc->die_dt != DT_FEMPTY) {

  dma_rmb();
  desc_status = desc->msc;
  pkt_len = le16_to_cpu(desc->ds_cc) & RX_DS;

  if (--boguscnt < 0)
   break;


  if (!pkt_len)
   continue;

  if (desc_status & MSC_MC)
   stats->multicast++;

  if (desc_status & (MSC_CRC | MSC_RFE | MSC_RTSF | MSC_RTLF |
       MSC_CEEF)) {
   stats->rx_errors++;
   if (desc_status & MSC_CRC)
    stats->rx_crc_errors++;
   if (desc_status & MSC_RFE)
    stats->rx_frame_errors++;
   if (desc_status & (MSC_RTLF | MSC_RTSF))
    stats->rx_length_errors++;
   if (desc_status & MSC_CEEF)
    stats->rx_missed_errors++;
  } else {
   u32 get_ts = priv->tstamp_rx_ctrl & RAVB_RXTSTAMP_TYPE;

   skb = priv->rx_skb[q][entry];
   priv->rx_skb[q][entry] = ((void*)0);
   dma_unmap_single(ndev->dev.parent, le32_to_cpu(desc->dptr),
      priv->rx_buf_sz,
      DMA_FROM_DEVICE);
   get_ts &= (q == RAVB_NC) ?
     RAVB_RXTSTAMP_TYPE_V2_L2_EVENT :
     ~RAVB_RXTSTAMP_TYPE_V2_L2_EVENT;
   if (get_ts) {
    struct skb_shared_hwtstamps *shhwtstamps;

    shhwtstamps = skb_hwtstamps(skb);
    memset(shhwtstamps, 0, sizeof(*shhwtstamps));
    ts.tv_sec = ((u64) le16_to_cpu(desc->ts_sh) <<
          32) | le32_to_cpu(desc->ts_sl);
    ts.tv_nsec = le32_to_cpu(desc->ts_n);
    shhwtstamps->hwtstamp = timespec64_to_ktime(ts);
   }

   skb_put(skb, pkt_len);
   skb->protocol = eth_type_trans(skb, ndev);
   if (ndev->features & NETIF_F_RXCSUM)
    ravb_rx_csum(skb);
   napi_gro_receive(&priv->napi[q], skb);
   stats->rx_packets++;
   stats->rx_bytes += pkt_len;
  }

  entry = (++priv->cur_rx[q]) % priv->num_rx_ring[q];
  desc = &priv->rx_ring[q][entry];
 }


 for (; priv->cur_rx[q] - priv->dirty_rx[q] > 0; priv->dirty_rx[q]++) {
  entry = priv->dirty_rx[q] % priv->num_rx_ring[q];
  desc = &priv->rx_ring[q][entry];
  desc->ds_cc = cpu_to_le16(priv->rx_buf_sz);

  if (!priv->rx_skb[q][entry]) {
   skb = netdev_alloc_skb(ndev,
            priv->rx_buf_sz +
            RAVB_ALIGN - 1);
   if (!skb)
    break;
   ravb_set_buffer_align(skb);
   dma_addr = dma_map_single(ndev->dev.parent, skb->data,
        le16_to_cpu(desc->ds_cc),
        DMA_FROM_DEVICE);
   skb_checksum_none_assert(skb);



   if (dma_mapping_error(ndev->dev.parent, dma_addr))
    desc->ds_cc = cpu_to_le16(0);
   desc->dptr = cpu_to_le32(dma_addr);
   priv->rx_skb[q][entry] = skb;
  }

  dma_wmb();
  desc->die_dt = DT_FEMPTY;
 }

 *quota -= limit - (++boguscnt);

 return boguscnt <= 0;
}
