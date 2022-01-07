
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int syncp; int bytes; int packets; } ;
struct sky2_port {int last_rx; TYPE_1__ rx_stats; } ;
struct sky2_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int jiffies ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int * rxqaddr ;
 int sky2_rx_update (struct sky2_port*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static inline void sky2_rx_done(struct sky2_hw *hw, unsigned port,
    unsigned packets, unsigned bytes)
{
 struct net_device *dev = hw->dev[port];
 struct sky2_port *sky2 = netdev_priv(dev);

 if (packets == 0)
  return;

 u64_stats_update_begin(&sky2->rx_stats.syncp);
 sky2->rx_stats.packets += packets;
 sky2->rx_stats.bytes += bytes;
 u64_stats_update_end(&sky2->rx_stats.syncp);

 sky2->last_rx = jiffies;
 sky2_rx_update(netdev_priv(dev), rxqaddr[port]);
}
