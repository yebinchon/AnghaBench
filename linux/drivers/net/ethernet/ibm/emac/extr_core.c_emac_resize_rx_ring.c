
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_6__ {int rx_dropped_resize; } ;
struct emac_instance {int rx_skb_size; int link_lock; int mal_rx_chan; int mal; scalar_t__ rx_slot; TYPE_4__ commac; TYPE_5__* ndev; struct sk_buff** rx_skb; TYPE_3__* ofdev; TYPE_2__* rx_desc; TYPE_1__ estats; struct sk_buff* rx_sg_skb; } ;
struct TYPE_10__ {int mtu; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int ctrl; scalar_t__ data_ptr; scalar_t__ data_len; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE ;
 int ENOMEM ;
 int ETH_DATA_LEN ;
 int MAL_COMMAC_RX_STOPPED ;
 int MAL_RX_CTRL_EMPTY ;
 int MAL_RX_CTRL_FIRST ;
 int MAL_RX_CTRL_WRAP ;
 scalar_t__ NET_IP_ALIGN ;
 int NUM_RX_BUFF ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dma_map_single (int *,scalar_t__,int,int ) ;
 int emac_full_tx_reset (struct emac_instance*) ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;
 int emac_netif_start (struct emac_instance*) ;
 int emac_netif_stop (struct emac_instance*) ;
 int emac_rx_disable (struct emac_instance*) ;
 int emac_rx_enable (struct emac_instance*) ;
 int emac_rx_size (int) ;
 int emac_rx_skb_size (int) ;
 int emac_rx_sync_size (int) ;
 int mal_disable_rx_channel (int ,int ) ;
 int mal_enable_rx_channel (int ,int ) ;
 int mal_set_rcbs (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sk_buff* netdev_alloc_skb_ip_align (TYPE_5__*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int emac_resize_rx_ring(struct emac_instance *dev, int new_mtu)
{
 int rx_sync_size = emac_rx_sync_size(new_mtu);
 int rx_skb_size = emac_rx_skb_size(new_mtu);
 int i, ret = 0;
 int mr1_jumbo_bit_change = 0;

 mutex_lock(&dev->link_lock);
 emac_netif_stop(dev);
 emac_rx_disable(dev);
 mal_disable_rx_channel(dev->mal, dev->mal_rx_chan);

 if (dev->rx_sg_skb) {
  ++dev->estats.rx_dropped_resize;
  dev_kfree_skb(dev->rx_sg_skb);
  dev->rx_sg_skb = ((void*)0);
 }





 for (i = 0; i < NUM_RX_BUFF; ++i) {
  if (dev->rx_desc[i].ctrl & MAL_RX_CTRL_FIRST)
   ++dev->estats.rx_dropped_resize;

  dev->rx_desc[i].data_len = 0;
  dev->rx_desc[i].ctrl = MAL_RX_CTRL_EMPTY |
      (i == (NUM_RX_BUFF - 1) ? MAL_RX_CTRL_WRAP : 0);
 }


 if (rx_skb_size <= dev->rx_skb_size)
  goto skip;


 for (i = 0; i < NUM_RX_BUFF; ++i) {
  struct sk_buff *skb;

  skb = netdev_alloc_skb_ip_align(dev->ndev, rx_skb_size);
  if (!skb) {
   ret = -ENOMEM;
   goto oom;
  }

  BUG_ON(!dev->rx_skb[i]);
  dev_kfree_skb(dev->rx_skb[i]);

  dev->rx_desc[i].data_ptr =
      dma_map_single(&dev->ofdev->dev, skb->data - NET_IP_ALIGN,
       rx_sync_size, DMA_FROM_DEVICE)
       + NET_IP_ALIGN;
  dev->rx_skb[i] = skb;
 }
 skip:

 if (emac_has_feature(dev, EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE)) {
  mr1_jumbo_bit_change = (new_mtu > ETH_DATA_LEN) ||
    (dev->ndev->mtu > ETH_DATA_LEN);
 } else {
  mr1_jumbo_bit_change = (new_mtu > ETH_DATA_LEN) ^
    (dev->ndev->mtu > ETH_DATA_LEN);
 }

 if (mr1_jumbo_bit_change) {

  set_bit(MAL_COMMAC_RX_STOPPED, &dev->commac.flags);

  dev->ndev->mtu = new_mtu;
  emac_full_tx_reset(dev);
 }

 mal_set_rcbs(dev->mal, dev->mal_rx_chan, emac_rx_size(new_mtu));
 oom:

 clear_bit(MAL_COMMAC_RX_STOPPED, &dev->commac.flags);
 dev->rx_slot = 0;
 mal_enable_rx_channel(dev->mal, dev->mal_rx_chan);
 emac_rx_enable(dev);
 emac_netif_start(dev);
 mutex_unlock(&dev->link_lock);

 return ret;
}
