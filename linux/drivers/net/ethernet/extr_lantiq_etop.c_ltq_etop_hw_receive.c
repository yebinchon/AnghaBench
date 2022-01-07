
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct ltq_etop_priv {int lock; } ;
struct TYPE_2__ {size_t desc; struct ltq_dma_desc* desc_base; } ;
struct ltq_etop_chan {int netdev; TYPE_1__ dma; struct sk_buff** skb; } ;
struct ltq_dma_desc {int ctl; } ;


 size_t LTQ_DESC_NUM ;
 int LTQ_DMA_SIZE_MASK ;
 int MAX_DMA_CRC_LEN ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int ltq_dma_close (TYPE_1__*) ;
 scalar_t__ ltq_etop_alloc_skb (struct ltq_etop_chan*) ;
 int netdev_err (int ,char*) ;
 struct ltq_etop_priv* netdev_priv (int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ltq_etop_hw_receive(struct ltq_etop_chan *ch)
{
 struct ltq_etop_priv *priv = netdev_priv(ch->netdev);
 struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
 struct sk_buff *skb = ch->skb[ch->dma.desc];
 int len = (desc->ctl & LTQ_DMA_SIZE_MASK) - MAX_DMA_CRC_LEN;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (ltq_etop_alloc_skb(ch)) {
  netdev_err(ch->netdev,
   "failed to allocate new rx buffer, stopping DMA\n");
  ltq_dma_close(&ch->dma);
 }
 ch->dma.desc++;
 ch->dma.desc %= LTQ_DESC_NUM;
 spin_unlock_irqrestore(&priv->lock, flags);

 skb_put(skb, len);
 skb->protocol = eth_type_trans(skb, ch->netdev);
 netif_receive_skb(skb);
}
