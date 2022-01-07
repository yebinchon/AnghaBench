
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_2__ {int restarts; } ;
struct can_priv {int (* do_set_mode ) (struct net_device*,int ) ;TYPE_1__ can_stats; } ;
struct can_frame {scalar_t__ can_dlc; int can_id; } ;


 int BUG_ON (int ) ;
 int CAN_ERR_RESTARTED ;
 int CAN_MODE_START ;
 int ENOMEM ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_flush_echo_skb (struct net_device*) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int stub1 (struct net_device*,int ) ;

__attribute__((used)) static void can_restart(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct sk_buff *skb;
 struct can_frame *cf;
 int err;

 BUG_ON(netif_carrier_ok(dev));




 can_flush_echo_skb(dev);


 skb = alloc_can_err_skb(dev, &cf);
 if (!skb) {
  err = -ENOMEM;
  goto restart;
 }
 cf->can_id |= CAN_ERR_RESTARTED;

 netif_rx(skb);

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;

restart:
 netdev_dbg(dev, "restarted\n");
 priv->can_stats.restarts++;


 err = priv->do_set_mode(dev, CAN_MODE_START);

 netif_carrier_on(dev);
 if (err)
  netdev_err(dev, "Error %d during restart", err);
}
