
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txqueue_timer; int rxqueue_timer; int rx_intsup; int tx_intsup; } ;
struct velocity_info {TYPE_1__ options; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {void* tx_coalesce_usecs; void* rx_coalesce_usecs; int rx_max_coalesced_frames; int tx_max_coalesced_frames; } ;


 void* get_pending_timer_val (int ) ;
 struct velocity_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int velocity_get_coalesce(struct net_device *dev,
  struct ethtool_coalesce *ecmd)
{
 struct velocity_info *vptr = netdev_priv(dev);

 ecmd->tx_max_coalesced_frames = vptr->options.tx_intsup;
 ecmd->rx_max_coalesced_frames = vptr->options.rx_intsup;

 ecmd->rx_coalesce_usecs = get_pending_timer_val(vptr->options.rxqueue_timer);
 ecmd->tx_coalesce_usecs = get_pending_timer_val(vptr->options.txqueue_timer);

 return 0;
}
