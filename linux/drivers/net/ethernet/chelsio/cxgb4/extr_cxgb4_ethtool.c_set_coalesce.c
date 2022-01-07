
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_coalesce_usecs_irq; int rx_max_coalesced_frames; int rx_coalesce_usecs; int use_adaptive_rx_coalesce; } ;


 int set_adaptive_rx_setting (struct net_device*,int ) ;
 int set_dbqtimer_tickval (struct net_device*,int ,int ) ;
 int set_rx_intr_params (struct net_device*,int ,int ) ;

__attribute__((used)) static int set_coalesce(struct net_device *dev,
   struct ethtool_coalesce *coalesce)
{
 int ret;

 set_adaptive_rx_setting(dev, coalesce->use_adaptive_rx_coalesce);

 ret = set_rx_intr_params(dev, coalesce->rx_coalesce_usecs,
     coalesce->rx_max_coalesced_frames);
 if (ret)
  return ret;

 return set_dbqtimer_tickval(dev,
        coalesce->tx_coalesce_usecs_irq,
        coalesce->tx_coalesce_usecs);
}
