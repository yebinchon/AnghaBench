
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; int ip_summed; int protocol; } ;
struct nixge_priv {size_t rx_bd_ci; struct nixge_hw_dma_bd* rx_bd_v; int napi; scalar_t__ rx_bd_p; } ;
struct nixge_hw_dma_bd {int status; int cntrl; } ;
struct TYPE_4__ {int rx_packets; int rx_bytes; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
typedef scalar_t__ dma_addr_t ;


 int CHECKSUM_NONE ;
 int DMA_FROM_DEVICE ;
 int NIXGE_MAX_JUMBO_FRAME_SIZE ;
 int RX_BD_NUM ;
 int XAXIDMA_BD_STS_ACTUAL_LEN_MASK ;
 int XAXIDMA_BD_STS_COMPLETE_MASK ;
 int XAXIDMA_RX_TDESC_OFFSET ;
 scalar_t__ dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int nixge_dma_write_desc_reg (struct nixge_priv*,int ,scalar_t__) ;
 scalar_t__ nixge_hw_dma_bd_get_addr (struct nixge_hw_dma_bd*,int ) ;
 int nixge_hw_dma_bd_set_offset (struct nixge_hw_dma_bd*,uintptr_t) ;
 int nixge_hw_dma_bd_set_phys (struct nixge_hw_dma_bd*,scalar_t__) ;
 int phys ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int sw_id_offset ;

__attribute__((used)) static int nixge_recv(struct net_device *ndev, int budget)
{
 struct nixge_priv *priv = netdev_priv(ndev);
 struct sk_buff *skb, *new_skb;
 struct nixge_hw_dma_bd *cur_p;
 dma_addr_t tail_p = 0, cur_phys = 0;
 u32 packets = 0;
 u32 length = 0;
 u32 size = 0;

 cur_p = &priv->rx_bd_v[priv->rx_bd_ci];

 while ((cur_p->status & XAXIDMA_BD_STS_COMPLETE_MASK &&
  budget > packets)) {
  tail_p = priv->rx_bd_p + sizeof(*priv->rx_bd_v) *
    priv->rx_bd_ci;

  skb = (struct sk_buff *)(uintptr_t)
   nixge_hw_dma_bd_get_addr(cur_p, sw_id_offset);

  length = cur_p->status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
  if (length > NIXGE_MAX_JUMBO_FRAME_SIZE)
   length = NIXGE_MAX_JUMBO_FRAME_SIZE;

  dma_unmap_single(ndev->dev.parent,
     nixge_hw_dma_bd_get_addr(cur_p, phys),
     NIXGE_MAX_JUMBO_FRAME_SIZE,
     DMA_FROM_DEVICE);

  skb_put(skb, length);

  skb->protocol = eth_type_trans(skb, ndev);
  skb_checksum_none_assert(skb);




  skb->ip_summed = CHECKSUM_NONE;

  napi_gro_receive(&priv->napi, skb);

  size += length;
  packets++;

  new_skb = netdev_alloc_skb_ip_align(ndev,
          NIXGE_MAX_JUMBO_FRAME_SIZE);
  if (!new_skb)
   return packets;

  cur_phys = dma_map_single(ndev->dev.parent, new_skb->data,
       NIXGE_MAX_JUMBO_FRAME_SIZE,
       DMA_FROM_DEVICE);
  if (dma_mapping_error(ndev->dev.parent, cur_phys)) {

   netdev_err(ndev, "Failed to map ...\n");
  }
  nixge_hw_dma_bd_set_phys(cur_p, cur_phys);
  cur_p->cntrl = NIXGE_MAX_JUMBO_FRAME_SIZE;
  cur_p->status = 0;
  nixge_hw_dma_bd_set_offset(cur_p, (uintptr_t)new_skb);

  ++priv->rx_bd_ci;
  priv->rx_bd_ci %= RX_BD_NUM;
  cur_p = &priv->rx_bd_v[priv->rx_bd_ci];
 }

 ndev->stats.rx_packets += packets;
 ndev->stats.rx_bytes += size;

 if (tail_p)
  nixge_dma_write_desc_reg(priv, XAXIDMA_RX_TDESC_OFFSET, tail_p);

 return packets;
}
