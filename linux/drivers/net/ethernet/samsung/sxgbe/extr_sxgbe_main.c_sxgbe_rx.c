
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sxgbe_rx_norm_desc {int dummy; } ;
struct sxgbe_priv_data {size_t cur_rx_qnum; unsigned int dma_rx_size; int napi; TYPE_3__* hw; TYPE_1__** rxq; int dev; int rxcsum_insertion; int xstats; } ;
struct sk_buff {int ip_summed; struct sxgbe_rx_norm_desc* data; } ;
struct TYPE_6__ {TYPE_2__* desc; } ;
struct TYPE_5__ {int (* rx_wbstatus ) (struct sxgbe_rx_norm_desc*,int *,int*) ;int (* get_rx_frame_len ) (struct sxgbe_rx_norm_desc*) ;scalar_t__ (* get_rx_owner ) (struct sxgbe_rx_norm_desc*) ;} ;
struct TYPE_4__ {unsigned int cur_rx; struct sk_buff** rx_skbuff; struct sxgbe_rx_norm_desc* dma_rx; } ;


 int CHECKSUM_NONE ;
 struct sxgbe_rx_norm_desc* NET_IP_ALIGN ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netdev_err (int ,char*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int prefetch (struct sxgbe_rx_norm_desc*) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ stub1 (struct sxgbe_rx_norm_desc*) ;
 int stub2 (struct sxgbe_rx_norm_desc*,int *,int*) ;
 int stub3 (struct sxgbe_rx_norm_desc*) ;
 int sxgbe_rx_refill (struct sxgbe_priv_data*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sxgbe_rx(struct sxgbe_priv_data *priv, int limit)
{
 u8 qnum = priv->cur_rx_qnum;
 unsigned int rxsize = priv->dma_rx_size;
 unsigned int entry = priv->rxq[qnum]->cur_rx;
 unsigned int next_entry = 0;
 unsigned int count = 0;
 int checksum;
 int status;

 while (count < limit) {
  struct sxgbe_rx_norm_desc *p;
  struct sk_buff *skb;
  int frame_len;

  p = priv->rxq[qnum]->dma_rx + entry;

  if (priv->hw->desc->get_rx_owner(p))
   break;

  count++;

  next_entry = (++priv->rxq[qnum]->cur_rx) % rxsize;
  prefetch(priv->rxq[qnum]->dma_rx + next_entry);





  status = priv->hw->desc->rx_wbstatus(p, &priv->xstats,
           &checksum);
  if (unlikely(status < 0)) {
   entry = next_entry;
   continue;
  }
  if (unlikely(!priv->rxcsum_insertion))
   checksum = CHECKSUM_NONE;

  skb = priv->rxq[qnum]->rx_skbuff[entry];

  if (unlikely(!skb))
   netdev_err(priv->dev, "rx descriptor is not consistent\n");

  prefetch(skb->data - NET_IP_ALIGN);
  priv->rxq[qnum]->rx_skbuff[entry] = ((void*)0);

  frame_len = priv->hw->desc->get_rx_frame_len(p);

  skb_put(skb, frame_len);

  skb->ip_summed = checksum;
  if (checksum == CHECKSUM_NONE)
   netif_receive_skb(skb);
  else
   napi_gro_receive(&priv->napi, skb);

  entry = next_entry;
 }

 sxgbe_rx_refill(priv);

 return count;
}
