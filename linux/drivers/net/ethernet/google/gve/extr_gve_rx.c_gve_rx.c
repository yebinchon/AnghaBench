
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int csum; int ip_summed; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct gve_rx_slot_page_info {int page; } ;
struct TYPE_8__ {int * data_ring; TYPE_3__* qpl; struct gve_rx_slot_page_info* page_info; } ;
struct gve_rx_ring {size_t ntfy_id; TYPE_4__ data; struct gve_priv* gve; } ;
struct gve_rx_desc {int flags_seq; int rss_hash; scalar_t__ csum; int len; } ;
struct gve_priv {scalar_t__ rx_copybreak; TYPE_2__* pdev; struct net_device* dev; TYPE_1__* ntfy_blocks; } ;
typedef int netdev_features_t ;
struct TYPE_7__ {int * page_buses; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct napi_struct napi; } ;


 int CHECKSUM_COMPLETE ;
 int CHECKSUM_NONE ;
 int DMA_FROM_DEVICE ;
 int GVE_RXF_ERR ;
 scalar_t__ GVE_RX_PAD ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int PAGE_SIZE ;
 int WARN (int,char*) ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int csum_unfold (scalar_t__) ;
 int dma_sync_single_for_cpu (int *,int ,int,int ) ;
 int get_page (int ) ;
 int gve_can_recycle_pages (struct net_device*) ;
 scalar_t__ gve_needs_rss (int) ;
 int gve_rss_type (int) ;
 struct sk_buff* gve_rx_add_frags (struct net_device*,struct napi_struct*,struct gve_rx_slot_page_info*,scalar_t__) ;
 struct sk_buff* gve_rx_copy (struct net_device*,struct napi_struct*,struct gve_rx_slot_page_info*,scalar_t__) ;
 int gve_rx_flip_buff (struct gve_rx_slot_page_info*,int *) ;
 scalar_t__ likely (int) ;
 int napi_gro_frags (struct napi_struct*) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int page_count (int ) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool gve_rx(struct gve_rx_ring *rx, struct gve_rx_desc *rx_desc,
     netdev_features_t feat, u32 idx)
{
 struct gve_rx_slot_page_info *page_info;
 struct gve_priv *priv = rx->gve;
 struct napi_struct *napi = &priv->ntfy_blocks[rx->ntfy_id].napi;
 struct net_device *dev = priv->dev;
 struct sk_buff *skb;
 int pagecount;
 u16 len;


 if (unlikely(rx_desc->flags_seq & GVE_RXF_ERR))
  return 1;

 len = be16_to_cpu(rx_desc->len) - GVE_RX_PAD;
 page_info = &rx->data.page_info[idx];
 dma_sync_single_for_cpu(&priv->pdev->dev, rx->data.qpl->page_buses[idx],
    PAGE_SIZE, DMA_FROM_DEVICE);






 if (PAGE_SIZE == 4096) {
  if (len <= priv->rx_copybreak) {

   skb = gve_rx_copy(dev, napi, page_info, len);
   goto have_skb;
  }
  if (unlikely(!gve_can_recycle_pages(dev))) {
   skb = gve_rx_copy(dev, napi, page_info, len);
   goto have_skb;
  }
  pagecount = page_count(page_info->page);
  if (pagecount == 1) {




   skb = gve_rx_add_frags(dev, napi, page_info, len);
   if (!skb)
    return 1;

   get_page(page_info->page);

   gve_rx_flip_buff(page_info, &rx->data.data_ring[idx]);
  } else if (pagecount >= 2) {



   skb = gve_rx_copy(dev, napi, page_info, len);
  } else {
   WARN(pagecount < 1, "Pagecount should never be < 1");
   return 0;
  }
 } else {
  skb = gve_rx_copy(dev, napi, page_info, len);
 }

have_skb:



 if (!skb)
  return 1;

 if (likely(feat & NETIF_F_RXCSUM)) {

  if (rx_desc->csum)
   skb->ip_summed = CHECKSUM_COMPLETE;
  else
   skb->ip_summed = CHECKSUM_NONE;
  skb->csum = csum_unfold(rx_desc->csum);
 }


 if (likely(feat & NETIF_F_RXHASH) &&
     gve_needs_rss(rx_desc->flags_seq))
  skb_set_hash(skb, be32_to_cpu(rx_desc->rss_hash),
        gve_rss_type(rx_desc->flags_seq));

 if (skb_is_nonlinear(skb))
  napi_gro_frags(napi);
 else
  napi_gro_receive(napi, skb);
 return 1;
}
