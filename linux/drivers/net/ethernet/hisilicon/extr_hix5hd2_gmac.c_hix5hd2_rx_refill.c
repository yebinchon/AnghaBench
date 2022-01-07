
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int data; } ;
struct TYPE_2__ {struct hix5hd2_desc* desc; } ;
struct hix5hd2_priv {scalar_t__ base; struct sk_buff** rx_skb; TYPE_1__ rx_fq; int dev; int netdev; } ;
struct hix5hd2_desc {void* cmd; void* buff_addr; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ CIRC_SPACE (scalar_t__,scalar_t__,int ) ;
 scalar_t__ DESC_BUFF_LEN_OFF ;
 scalar_t__ DESC_VLD_FREE ;
 int DMA_FROM_DEVICE ;
 scalar_t__ MAC_MAX_FRAME_SIZE ;
 int RX_DESC_NUM ;
 scalar_t__ RX_FQ_RD_ADDR ;
 scalar_t__ RX_FQ_WR_ADDR ;
 void* cpu_to_le32 (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_byte (scalar_t__) ;
 scalar_t__ dma_cnt (int ) ;
 scalar_t__ dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 scalar_t__ dma_ring_incr (scalar_t__,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_rx_refill(struct hix5hd2_priv *priv)
{
 struct hix5hd2_desc *desc;
 struct sk_buff *skb;
 u32 start, end, num, pos, i;
 u32 len = MAC_MAX_FRAME_SIZE;
 dma_addr_t addr;


 start = dma_cnt(readl_relaxed(priv->base + RX_FQ_WR_ADDR));

 end = dma_cnt(readl_relaxed(priv->base + RX_FQ_RD_ADDR));
 num = CIRC_SPACE(start, end, RX_DESC_NUM);

 for (i = 0, pos = start; i < num; i++) {
  if (priv->rx_skb[pos]) {
   break;
  } else {
   skb = netdev_alloc_skb_ip_align(priv->netdev, len);
   if (unlikely(skb == ((void*)0)))
    break;
  }

  addr = dma_map_single(priv->dev, skb->data, len, DMA_FROM_DEVICE);
  if (dma_mapping_error(priv->dev, addr)) {
   dev_kfree_skb_any(skb);
   break;
  }

  desc = priv->rx_fq.desc + pos;
  desc->buff_addr = cpu_to_le32(addr);
  priv->rx_skb[pos] = skb;
  desc->cmd = cpu_to_le32(DESC_VLD_FREE |
     (len - 1) << DESC_BUFF_LEN_OFF);
  pos = dma_ring_incr(pos, RX_DESC_NUM);
 }


 wmb();

 if (pos != start)
  writel_relaxed(dma_byte(pos), priv->base + RX_FQ_WR_ADDR);
}
