
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; int tail; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {TYPE_2__* desc; } ;
struct ave_private {TYPE_1__ rx; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct sk_buff* skbs; } ;


 int AVE_DESCID_RX ;
 scalar_t__ AVE_FRAME_HEADROOM ;
 int AVE_MAX_ETHFRAME ;
 int AVE_STS_INTR ;
 int AVE_STS_OWN ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int ave_desc_write_addr (struct net_device*,int ,int,int ) ;
 int ave_desc_write_cmdsts (struct net_device*,int ,int,int) ;
 int ave_dma_map (struct net_device*,TYPE_2__*,scalar_t__,scalar_t__,int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct ave_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ave_rxdesc_prepare(struct net_device *ndev, int entry)
{
 struct ave_private *priv = netdev_priv(ndev);
 struct sk_buff *skb;
 dma_addr_t paddr;
 int ret;

 skb = priv->rx.desc[entry].skbs;
 if (!skb) {
  skb = netdev_alloc_skb(ndev, AVE_MAX_ETHFRAME);
  if (!skb) {
   netdev_err(ndev, "can't allocate skb for Rx\n");
   return -ENOMEM;
  }
  skb->data += AVE_FRAME_HEADROOM;
  skb->tail += AVE_FRAME_HEADROOM;
 }


 ave_desc_write_cmdsts(ndev, AVE_DESCID_RX, entry,
         AVE_STS_INTR | AVE_STS_OWN);
 ret = ave_dma_map(ndev, &priv->rx.desc[entry],
     skb->data - AVE_FRAME_HEADROOM,
     AVE_MAX_ETHFRAME + AVE_FRAME_HEADROOM,
     DMA_FROM_DEVICE, &paddr);
 if (ret) {
  netdev_err(ndev, "can't map skb for Rx\n");
  dev_kfree_skb_any(skb);
  return ret;
 }
 priv->rx.desc[entry].skbs = skb;


 ave_desc_write_addr(ndev, AVE_DESCID_RX, entry, paddr);


 ave_desc_write_cmdsts(ndev, AVE_DESCID_RX, entry,
         AVE_STS_INTR | AVE_MAX_ETHFRAME);

 return ret;
}
