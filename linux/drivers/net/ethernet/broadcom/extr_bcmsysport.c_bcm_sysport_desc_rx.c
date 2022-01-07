
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int protocol; int ip_summed; scalar_t__ data; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; int rx_errors; int rx_dropped; int rx_over_errors; int rx_length_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct bcm_sysport_stats64 {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; } ;
struct bcm_sysport_priv {unsigned int rx_c_index; size_t rx_read_ptr; size_t num_rx_bds; TYPE_2__ dim; int napi; int syncp; scalar_t__ crc_fwd; struct bcm_sysport_cb* rx_cbs; int is_lite; struct net_device* netdev; struct bcm_sysport_stats64 stats64; } ;
struct bcm_sysport_cb {int dummy; } ;
struct bcm_rsb {int rx_status_len; } ;


 int CHECKSUM_UNNECESSARY ;
 int DESC_EOP ;
 int DESC_L4_CSUM ;
 int DESC_LEN_MASK ;
 int DESC_LEN_SHIFT ;
 int DESC_SOP ;
 int DESC_STATUS_MASK ;
 int DESC_STATUS_SHIFT ;
 scalar_t__ ETH_FCS_LEN ;
 int INTRL2_0_RDMA_MBDONE ;
 int INTRL2_CPU_CLEAR ;
 int RDMA_CONS_INDEX ;
 unsigned int RDMA_CONS_INDEX_MASK ;
 int RDMA_PROD_INDEX ;
 unsigned int RDMA_PROD_INDEX_MASK ;
 int RX_BUF_LENGTH ;
 int RX_STATUS_ERR ;
 int RX_STATUS_OVFLOW ;
 struct sk_buff* bcm_sysport_rx_refill (struct bcm_sysport_priv*,struct bcm_sysport_cb*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int intrl2_0_writel (struct bcm_sysport_priv*,int ,int ) ;
 scalar_t__ likely (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,struct net_device*,char*,unsigned int,unsigned int,size_t,...) ;
 int netif_err (struct bcm_sysport_priv*,int ,struct net_device*,char*) ;
 unsigned int rdma_readl (struct bcm_sysport_priv*,int ) ;
 int rx_err ;
 int rx_status ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int bcm_sysport_desc_rx(struct bcm_sysport_priv *priv,
     unsigned int budget)
{
 struct bcm_sysport_stats64 *stats64 = &priv->stats64;
 struct net_device *ndev = priv->netdev;
 unsigned int processed = 0, to_process;
 unsigned int processed_bytes = 0;
 struct bcm_sysport_cb *cb;
 struct sk_buff *skb;
 unsigned int p_index;
 u16 len, status;
 struct bcm_rsb *rsb;


 intrl2_0_writel(priv, INTRL2_0_RDMA_MBDONE, INTRL2_CPU_CLEAR);





 if (!priv->is_lite)
  p_index = rdma_readl(priv, RDMA_PROD_INDEX);
 else
  p_index = rdma_readl(priv, RDMA_CONS_INDEX);
 p_index &= RDMA_PROD_INDEX_MASK;

 to_process = (p_index - priv->rx_c_index) & RDMA_CONS_INDEX_MASK;

 netif_dbg(priv, rx_status, ndev,
    "p_index=%d rx_c_index=%d to_process=%d\n",
    p_index, priv->rx_c_index, to_process);

 while ((processed < to_process) && (processed < budget)) {
  cb = &priv->rx_cbs[priv->rx_read_ptr];
  skb = bcm_sysport_rx_refill(priv, cb);







  if (unlikely(!skb)) {
   netif_err(priv, rx_err, ndev, "out of memory!\n");
   ndev->stats.rx_dropped++;
   ndev->stats.rx_errors++;
   goto next;
  }


  rsb = (struct bcm_rsb *)skb->data;
  len = (rsb->rx_status_len >> DESC_LEN_SHIFT) & DESC_LEN_MASK;
  status = (rsb->rx_status_len >> DESC_STATUS_SHIFT) &
     DESC_STATUS_MASK;

  netif_dbg(priv, rx_status, ndev,
     "p=%d, c=%d, rd_ptr=%d, len=%d, flag=0x%04x\n",
     p_index, priv->rx_c_index, priv->rx_read_ptr,
     len, status);

  if (unlikely(len > RX_BUF_LENGTH)) {
   netif_err(priv, rx_status, ndev, "oversized packet\n");
   ndev->stats.rx_length_errors++;
   ndev->stats.rx_errors++;
   dev_kfree_skb_any(skb);
   goto next;
  }

  if (unlikely(!(status & DESC_EOP) || !(status & DESC_SOP))) {
   netif_err(priv, rx_status, ndev, "fragmented packet!\n");
   ndev->stats.rx_dropped++;
   ndev->stats.rx_errors++;
   dev_kfree_skb_any(skb);
   goto next;
  }

  if (unlikely(status & (RX_STATUS_ERR | RX_STATUS_OVFLOW))) {
   netif_err(priv, rx_err, ndev, "error packet\n");
   if (status & RX_STATUS_OVFLOW)
    ndev->stats.rx_over_errors++;
   ndev->stats.rx_dropped++;
   ndev->stats.rx_errors++;
   dev_kfree_skb_any(skb);
   goto next;
  }

  skb_put(skb, len);


  if (likely(status & DESC_L4_CSUM))
   skb->ip_summed = CHECKSUM_UNNECESSARY;





  skb_pull(skb, sizeof(*rsb) + 2);
  len -= (sizeof(*rsb) + 2);
  processed_bytes += len;


  if (priv->crc_fwd) {
   skb_trim(skb, len - ETH_FCS_LEN);
   len -= ETH_FCS_LEN;
  }

  skb->protocol = eth_type_trans(skb, ndev);
  ndev->stats.rx_packets++;
  ndev->stats.rx_bytes += len;
  u64_stats_update_begin(&priv->syncp);
  stats64->rx_packets++;
  stats64->rx_bytes += len;
  u64_stats_update_end(&priv->syncp);

  napi_gro_receive(&priv->napi, skb);
next:
  processed++;
  priv->rx_read_ptr++;

  if (priv->rx_read_ptr == priv->num_rx_bds)
   priv->rx_read_ptr = 0;
 }

 priv->dim.packets = processed;
 priv->dim.bytes = processed_bytes;

 return processed;
}
