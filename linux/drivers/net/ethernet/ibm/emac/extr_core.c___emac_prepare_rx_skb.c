
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct emac_instance {TYPE_2__* rx_desc; int rx_sync_size; TYPE_1__* ofdev; struct sk_buff** rx_skb; } ;
struct TYPE_4__ {int ctrl; scalar_t__ data_ptr; scalar_t__ data_len; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int MAL_RX_CTRL_EMPTY ;
 int MAL_RX_CTRL_WRAP ;
 scalar_t__ NET_IP_ALIGN ;
 int NUM_RX_BUFF ;
 scalar_t__ dma_map_single (int *,scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int
__emac_prepare_rx_skb(struct sk_buff *skb, struct emac_instance *dev, int slot)
{
 if (unlikely(!skb))
  return -ENOMEM;

 dev->rx_skb[slot] = skb;
 dev->rx_desc[slot].data_len = 0;

 dev->rx_desc[slot].data_ptr =
     dma_map_single(&dev->ofdev->dev, skb->data - NET_IP_ALIGN,
      dev->rx_sync_size, DMA_FROM_DEVICE) + NET_IP_ALIGN;
 wmb();
 dev->rx_desc[slot].ctrl = MAL_RX_CTRL_EMPTY |
     (slot == (NUM_RX_BUFF - 1) ? MAL_RX_CTRL_WRAP : 0);

 return 0;
}
