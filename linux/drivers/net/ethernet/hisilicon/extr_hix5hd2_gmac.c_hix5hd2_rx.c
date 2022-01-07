
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int protocol; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {struct hix5hd2_desc* desc; } ;
struct hix5hd2_priv {scalar_t__ base; int napi; int dev; TYPE_1__ rx_bq; struct sk_buff** rx_skb; } ;
struct hix5hd2_desc {int buff_addr; int cmd; } ;
typedef int dma_addr_t ;


 int CIRC_CNT (int,int,int ) ;
 int DESC_DATA_LEN_OFF ;
 int DESC_DATA_MASK ;
 int DMA_FROM_DEVICE ;
 scalar_t__ MAC_MAX_FRAME_SIZE ;
 scalar_t__ RX_BQ_RD_ADDR ;
 scalar_t__ RX_BQ_WR_ADDR ;
 int RX_DESC_NUM ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_byte (int) ;
 int dma_cnt (int ) ;
 int dma_ring_incr (int,int ) ;
 int dma_unmap_single (int ,int,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int hix5hd2_rx_refill (struct hix5hd2_priv*) ;
 int le32_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int readl_relaxed (scalar_t__) ;
 int rmb () ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int hix5hd2_rx(struct net_device *dev, int limit)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);
 struct sk_buff *skb;
 struct hix5hd2_desc *desc;
 dma_addr_t addr;
 u32 start, end, num, pos, i, len;


 start = dma_cnt(readl_relaxed(priv->base + RX_BQ_RD_ADDR));

 end = dma_cnt(readl_relaxed(priv->base + RX_BQ_WR_ADDR));
 num = CIRC_CNT(end, start, RX_DESC_NUM);
 if (num > limit)
  num = limit;


 rmb();
 for (i = 0, pos = start; i < num; i++) {
  skb = priv->rx_skb[pos];
  if (unlikely(!skb)) {
   netdev_err(dev, "inconsistent rx_skb\n");
   break;
  }
  priv->rx_skb[pos] = ((void*)0);

  desc = priv->rx_bq.desc + pos;
  len = (le32_to_cpu(desc->cmd) >> DESC_DATA_LEN_OFF) &
         DESC_DATA_MASK;
  addr = le32_to_cpu(desc->buff_addr);
  dma_unmap_single(priv->dev, addr, MAC_MAX_FRAME_SIZE,
     DMA_FROM_DEVICE);

  skb_put(skb, len);
  if (skb->len > MAC_MAX_FRAME_SIZE) {
   netdev_err(dev, "rcv len err, len = %d\n", skb->len);
   dev->stats.rx_errors++;
   dev->stats.rx_length_errors++;
   dev_kfree_skb_any(skb);
   goto next;
  }

  skb->protocol = eth_type_trans(skb, dev);
  napi_gro_receive(&priv->napi, skb);
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += skb->len;
next:
  pos = dma_ring_incr(pos, RX_DESC_NUM);
 }

 if (pos != start)
  writel_relaxed(dma_byte(pos), priv->base + RX_BQ_RD_ADDR);

 hix5hd2_rx_refill(priv);

 return num;
}
