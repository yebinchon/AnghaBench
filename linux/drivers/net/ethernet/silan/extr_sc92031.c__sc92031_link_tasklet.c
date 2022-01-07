
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 scalar_t__ _sc92031_check_media (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void _sc92031_link_tasklet(struct net_device *dev)
{
 if (_sc92031_check_media(dev))
  netif_wake_queue(dev);
 else {
  netif_stop_queue(dev);
  dev->stats.tx_carrier_errors++;
 }
}
