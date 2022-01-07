
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ rx_copybreak; scalar_t__ rx_align; TYPE_1__* pdev; } ;
struct bufdesc {int cbd_bufaddr; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ FEC_ENET_RX_FRSIZE ;
 int dma_sync_single_for_cpu (int *,int ,scalar_t__,int ) ;
 int fec32_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int swap_buffer2 (int ,int ,scalar_t__) ;

__attribute__((used)) static bool fec_enet_copybreak(struct net_device *ndev, struct sk_buff **skb,
          struct bufdesc *bdp, u32 length, bool swap)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct sk_buff *new_skb;

 if (length > fep->rx_copybreak)
  return 0;

 new_skb = netdev_alloc_skb(ndev, length);
 if (!new_skb)
  return 0;

 dma_sync_single_for_cpu(&fep->pdev->dev,
    fec32_to_cpu(bdp->cbd_bufaddr),
    FEC_ENET_RX_FRSIZE - fep->rx_align,
    DMA_FROM_DEVICE);
 if (!swap)
  memcpy(new_skb->data, (*skb)->data, length);
 else
  swap_buffer2(new_skb->data, (*skb)->data, length);
 *skb = new_skb;

 return 1;
}
