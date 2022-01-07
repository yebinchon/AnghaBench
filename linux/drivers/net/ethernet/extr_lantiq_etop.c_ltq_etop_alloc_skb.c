
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ltq_etop_priv {TYPE_1__* pdev; } ;
struct TYPE_8__ {size_t desc; TYPE_2__* desc_base; } ;
struct ltq_etop_chan {TYPE_3__ dma; TYPE_4__** skb; int netdev; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_7__ {int ctl; int addr; } ;
struct TYPE_6__ {int dev; } ;


 int CPHYSADDR (int ) ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int LTQ_DMA_OWN ;
 int LTQ_DMA_RX_OFFSET (int ) ;
 int MAX_DMA_DATA_LEN ;
 int NET_IP_ALIGN ;
 int dma_map_single (int *,int ,int,int ) ;
 TYPE_4__* netdev_alloc_skb (int ,int) ;
 struct ltq_etop_priv* netdev_priv (int ) ;
 int skb_reserve (TYPE_4__*,int ) ;

__attribute__((used)) static int
ltq_etop_alloc_skb(struct ltq_etop_chan *ch)
{
 struct ltq_etop_priv *priv = netdev_priv(ch->netdev);

 ch->skb[ch->dma.desc] = netdev_alloc_skb(ch->netdev, MAX_DMA_DATA_LEN);
 if (!ch->skb[ch->dma.desc])
  return -ENOMEM;
 ch->dma.desc_base[ch->dma.desc].addr = dma_map_single(&priv->pdev->dev,
  ch->skb[ch->dma.desc]->data, MAX_DMA_DATA_LEN,
  DMA_FROM_DEVICE);
 ch->dma.desc_base[ch->dma.desc].addr =
  CPHYSADDR(ch->skb[ch->dma.desc]->data);
 ch->dma.desc_base[ch->dma.desc].ctl =
  LTQ_DMA_OWN | LTQ_DMA_RX_OFFSET(NET_IP_ALIGN) |
  MAX_DMA_DATA_LEN;
 skb_reserve(ch->skb[ch->dma.desc], NET_IP_ALIGN);
 return 0;
}
