
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct channel_data {TYPE_3__* rx_skb; TYPE_2__* cosa; TYPE_6__* netdev; int name; } ;
struct TYPE_7__ {int rx_bytes; int rx_packets; int rx_frame_errors; int rx_errors; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {TYPE_6__* dev; int protocol; } ;
struct TYPE_8__ {scalar_t__ rxsize; } ;


 int hdlc_type_trans (TYPE_3__*,TYPE_6__*) ;
 int netif_rx (TYPE_3__*) ;
 int pr_warn (char*,int ) ;
 int skb_reset_mac_header (TYPE_3__*) ;

__attribute__((used)) static int cosa_net_rx_done(struct channel_data *chan)
{
 if (!chan->rx_skb) {
  pr_warn("%s: rx_done with empty skb!\n", chan->name);
  chan->netdev->stats.rx_errors++;
  chan->netdev->stats.rx_frame_errors++;
  return 0;
 }
 chan->rx_skb->protocol = hdlc_type_trans(chan->rx_skb, chan->netdev);
 chan->rx_skb->dev = chan->netdev;
 skb_reset_mac_header(chan->rx_skb);
 chan->netdev->stats.rx_packets++;
 chan->netdev->stats.rx_bytes += chan->cosa->rxsize;
 netif_rx(chan->rx_skb);
 chan->rx_skb = ((void*)0);
 return 0;
}
