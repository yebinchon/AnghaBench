
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int pmf; } ;
struct bnx2x {TYPE_1__ port; } ;


 int STATS_EVENT_STOP ;
 int bnx2x_force_link_reset (struct bnx2x*) ;
 int bnx2x_link_set (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnx2x_nway_reset(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (!bp->port.pmf)
  return 0;

 if (netif_running(dev)) {
  bnx2x_stats_handle(bp, STATS_EVENT_STOP);
  bnx2x_force_link_reset(bp);
  bnx2x_link_set(bp);
 }

 return 0;
}
