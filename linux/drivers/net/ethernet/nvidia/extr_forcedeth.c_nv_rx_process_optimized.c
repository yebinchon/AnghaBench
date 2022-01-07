
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int data; int protocol; int ip_summed; } ;
struct net_device {int features; } ;
struct TYPE_13__ {TYPE_5__* ex; } ;
struct TYPE_11__ {TYPE_5__* ex; } ;
struct TYPE_10__ {int ex; } ;
struct TYPE_8__ {TYPE_5__* ex; } ;
struct fe_priv {TYPE_7__* rx_skb; TYPE_7__* get_rx_ctx; int last_rx_ctx; TYPE_6__ rx_ring; TYPE_4__ get_rx; TYPE_3__ last_rx; int swstats_rx_syncp; int napi; TYPE_2__* pci_dev; TYPE_1__ put_rx; } ;
struct TYPE_14__ {struct sk_buff* skb; int dma_len; int dma; } ;
struct TYPE_12__ {int buflow; int flaglen; } ;
struct TYPE_9__ {int dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ETH_P_8021Q ;
 int LEN_MASK_V2 ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NV_RX2_AVAIL ;
 int NV_RX2_CHECKSUMMASK ;
 int NV_RX2_CHECKSUM_IP_TCP ;
 int NV_RX2_CHECKSUM_IP_UDP ;
 int NV_RX2_DESCRIPTORVALID ;
 int NV_RX2_ERROR ;
 int NV_RX2_ERROR4 ;
 int NV_RX2_ERROR_MASK ;
 int NV_RX2_FRAMINGERR ;
 int NV_RX2_SUBTRACT1 ;
 int NV_RX3_VLAN_TAG_MASK ;
 int NV_RX3_VLAN_TAG_PRESENT ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int nv_getlen (struct net_device*,int ,int) ;
 int nv_txrx_stats_add (int ,int) ;
 int nv_txrx_stats_inc (int ) ;
 int prefetch (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int stat_rx_bytes ;
 int stat_rx_packets ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nv_rx_process_optimized(struct net_device *dev, int limit)
{
 struct fe_priv *np = netdev_priv(dev);
 u32 flags;
 u32 vlanflags = 0;
 int rx_work = 0;
 struct sk_buff *skb;
 int len;

 while ((np->get_rx.ex != np->put_rx.ex) &&
       !((flags = le32_to_cpu(np->get_rx.ex->flaglen)) & NV_RX2_AVAIL) &&
       (rx_work < limit)) {






  dma_unmap_single(&np->pci_dev->dev, np->get_rx_ctx->dma,
     np->get_rx_ctx->dma_len,
     DMA_FROM_DEVICE);
  skb = np->get_rx_ctx->skb;
  np->get_rx_ctx->skb = ((void*)0);


  if (likely(flags & NV_RX2_DESCRIPTORVALID)) {
   len = flags & LEN_MASK_V2;
   if (unlikely(flags & NV_RX2_ERROR)) {
    if ((flags & NV_RX2_ERROR_MASK) == NV_RX2_ERROR4) {
     len = nv_getlen(dev, skb->data, len);
     if (len < 0) {
      dev_kfree_skb(skb);
      goto next_pkt;
     }
    }

    else if ((flags & NV_RX2_ERROR_MASK) == NV_RX2_FRAMINGERR) {
     if (flags & NV_RX2_SUBTRACT1)
      len--;
    }

    else {
     dev_kfree_skb(skb);
     goto next_pkt;
    }
   }

   if (((flags & NV_RX2_CHECKSUMMASK) == NV_RX2_CHECKSUM_IP_TCP) ||
       ((flags & NV_RX2_CHECKSUMMASK) == NV_RX2_CHECKSUM_IP_UDP))
    skb->ip_summed = CHECKSUM_UNNECESSARY;


   skb_put(skb, len);
   skb->protocol = eth_type_trans(skb, dev);
   prefetch(skb->data);

   vlanflags = le32_to_cpu(np->get_rx.ex->buflow);






   if (dev->features & NETIF_F_HW_VLAN_CTAG_RX &&
       vlanflags & NV_RX3_VLAN_TAG_PRESENT) {
    u16 vid = vlanflags & NV_RX3_VLAN_TAG_MASK;

    __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
   }
   napi_gro_receive(&np->napi, skb);
   u64_stats_update_begin(&np->swstats_rx_syncp);
   nv_txrx_stats_inc(stat_rx_packets);
   nv_txrx_stats_add(stat_rx_bytes, len);
   u64_stats_update_end(&np->swstats_rx_syncp);
  } else {
   dev_kfree_skb(skb);
  }
next_pkt:
  if (unlikely(np->get_rx.ex++ == np->last_rx.ex))
   np->get_rx.ex = np->rx_ring.ex;
  if (unlikely(np->get_rx_ctx++ == np->last_rx_ctx))
   np->get_rx_ctx = np->rx_skb;

  rx_work++;
 }

 return rx_work;
}
