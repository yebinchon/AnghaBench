
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct hostap_80211_rx_status {int dummy; } ;


 int PRISM2_RX_MONITOR ;
 int prism2_rx_80211 (struct net_device*,struct sk_buff*,struct hostap_80211_rx_status*,int ) ;

__attribute__((used)) static void monitor_rx(struct net_device *dev, struct sk_buff *skb,
         struct hostap_80211_rx_status *rx_stats)
{
 int len;

 len = prism2_rx_80211(dev, skb, rx_stats, PRISM2_RX_MONITOR);
 dev->stats.rx_packets++;
 dev->stats.rx_bytes += len;
}
