
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ice_q_stats {int dummy; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {int alloc_txq; int alloc_rxq; } ;


 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ice_q_stats_len(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);

 return ((np->vsi->alloc_txq + np->vsi->alloc_rxq) *
  (sizeof(struct ice_q_stats) / sizeof(u64)));
}
