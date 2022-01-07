
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {int seqno; struct gve_rx_desc* desc_ring; } ;
struct gve_rx_ring {int cnt; int mask; int rpackets; int fill_cnt; int statss; int rbytes; TYPE_1__ desc; int q_num; struct gve_priv* gve; } ;
struct gve_rx_desc {int len; int flags_seq; } ;
struct gve_priv {int dev; } ;
typedef int netdev_features_t ;


 scalar_t__ GVE_RX_PAD ;
 int GVE_SEQNO (int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 int dma_wmb () ;
 int gve_next_seqno (int ) ;
 int gve_rx (struct gve_rx_ring*,struct gve_rx_desc*,int ,int) ;
 int gve_rx_work_pending (struct gve_rx_ring*) ;
 int gve_rx_write_doorbell (struct gve_priv*,struct gve_rx_ring*) ;
 int gve_schedule_reset (struct gve_priv*) ;
 int netif_info (struct gve_priv*,int ,int ,char*,int ,int,struct gve_rx_desc*,...) ;
 int rx_status ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

bool gve_clean_rx_done(struct gve_rx_ring *rx, int budget,
         netdev_features_t feat)
{
 struct gve_priv *priv = rx->gve;
 struct gve_rx_desc *desc;
 u32 cnt = rx->cnt;
 u32 idx = cnt & rx->mask;
 u32 work_done = 0;
 u64 bytes = 0;

 desc = rx->desc.desc_ring + idx;
 while ((GVE_SEQNO(desc->flags_seq) == rx->desc.seqno) &&
        work_done < budget) {
  netif_info(priv, rx_status, priv->dev,
      "[%d] idx=%d desc=%p desc->flags_seq=0x%x\n",
      rx->q_num, idx, desc, desc->flags_seq);
  netif_info(priv, rx_status, priv->dev,
      "[%d] seqno=%d rx->desc.seqno=%d\n",
      rx->q_num, GVE_SEQNO(desc->flags_seq),
      rx->desc.seqno);
  bytes += be16_to_cpu(desc->len) - GVE_RX_PAD;
  if (!gve_rx(rx, desc, feat, idx))
   gve_schedule_reset(priv);
  cnt++;
  idx = cnt & rx->mask;
  desc = rx->desc.desc_ring + idx;
  rx->desc.seqno = gve_next_seqno(rx->desc.seqno);
  work_done++;
 }

 if (!work_done)
  return 0;

 u64_stats_update_begin(&rx->statss);
 rx->rpackets += work_done;
 rx->rbytes += bytes;
 u64_stats_update_end(&rx->statss);
 rx->cnt = cnt;
 rx->fill_cnt += work_done;


 dma_wmb();
 gve_rx_write_doorbell(priv, rx);
 return gve_rx_work_pending(rx);
}
