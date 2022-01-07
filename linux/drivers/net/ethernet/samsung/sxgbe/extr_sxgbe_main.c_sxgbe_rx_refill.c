
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {int buf2_addr; } ;
struct TYPE_7__ {TYPE_1__ rx_rd_des23; } ;
struct sxgbe_rx_norm_desc {TYPE_2__ rdes23; } ;
struct sxgbe_priv_data {unsigned int dma_rx_size; int dma_buf_sz; size_t cur_rx_qnum; TYPE_5__* hw; TYPE_3__** rxq; int device; int dev; } ;
struct sk_buff {int data; } ;
struct TYPE_10__ {TYPE_4__* desc; } ;
struct TYPE_9__ {int (* set_rx_int_on_com ) (struct sxgbe_rx_norm_desc*) ;int (* set_rx_owner ) (struct sxgbe_rx_norm_desc*) ;} ;
struct TYPE_8__ {scalar_t__ cur_rx; unsigned int dirty_rx; int * rx_skbuff_dma; struct sk_buff** rx_skbuff; struct sxgbe_rx_norm_desc* dma_rx; } ;


 int DMA_FROM_DEVICE ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ likely (int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int stub1 (struct sxgbe_rx_norm_desc*) ;
 int stub2 (struct sxgbe_rx_norm_desc*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void sxgbe_rx_refill(struct sxgbe_priv_data *priv)
{
 unsigned int rxsize = priv->dma_rx_size;
 int bfsize = priv->dma_buf_sz;
 u8 qnum = priv->cur_rx_qnum;

 for (; priv->rxq[qnum]->cur_rx - priv->rxq[qnum]->dirty_rx > 0;
      priv->rxq[qnum]->dirty_rx++) {
  unsigned int entry = priv->rxq[qnum]->dirty_rx % rxsize;
  struct sxgbe_rx_norm_desc *p;

  p = priv->rxq[qnum]->dma_rx + entry;

  if (likely(priv->rxq[qnum]->rx_skbuff[entry] == ((void*)0))) {
   struct sk_buff *skb;

   skb = netdev_alloc_skb_ip_align(priv->dev, bfsize);

   if (unlikely(skb == ((void*)0)))
    break;

   priv->rxq[qnum]->rx_skbuff[entry] = skb;
   priv->rxq[qnum]->rx_skbuff_dma[entry] =
    dma_map_single(priv->device, skb->data, bfsize,
            DMA_FROM_DEVICE);

   p->rdes23.rx_rd_des23.buf2_addr =
    priv->rxq[qnum]->rx_skbuff_dma[entry];
  }


  wmb();
  priv->hw->desc->set_rx_owner(p);
  priv->hw->desc->set_rx_int_on_com(p);

  wmb();
 }
}
