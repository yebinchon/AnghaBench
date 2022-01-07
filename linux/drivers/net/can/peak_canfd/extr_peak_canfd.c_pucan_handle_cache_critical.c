
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rxerr; int txerr; } ;
struct peak_canfd_priv {TYPE_1__ bec; TYPE_2__* ndev; } ;
struct net_device_stats {int rx_packets; int rx_bytes; int rx_dropped; int rx_errors; int rx_over_errors; } ;
struct can_frame {scalar_t__ can_dlc; int * data; int can_id; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int ENOMEM ;
 struct sk_buff* alloc_can_err_skb (TYPE_2__*,struct can_frame**) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static int pucan_handle_cache_critical(struct peak_canfd_priv *priv)
{
 struct net_device_stats *stats = &priv->ndev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;

 stats->rx_over_errors++;
 stats->rx_errors++;

 skb = alloc_can_err_skb(priv->ndev, &cf);
 if (!skb) {
  stats->rx_dropped++;
  return -ENOMEM;
 }

 cf->can_id |= CAN_ERR_CRTL;
 cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;

 cf->data[6] = priv->bec.txerr;
 cf->data[7] = priv->bec.rxerr;

 stats->rx_bytes += cf->can_dlc;
 stats->rx_packets++;
 netif_rx(skb);

 return 0;
}
