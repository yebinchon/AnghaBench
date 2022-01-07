
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; int rx_tl; } ;
typedef TYPE_1__ pegasus_t ;


 int PEGASUS_UNPLUG ;
 int disable_net_traffic (TYPE_1__*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int tasklet_kill (int *) ;
 int unlink_all_urbs (TYPE_1__*) ;

__attribute__((used)) static int pegasus_close(struct net_device *net)
{
 pegasus_t *pegasus = netdev_priv(net);

 netif_stop_queue(net);
 if (!(pegasus->flags & PEGASUS_UNPLUG))
  disable_net_traffic(pegasus);
 tasklet_kill(&pegasus->rx_tl);
 unlink_all_urbs(pegasus);

 return 0;
}
