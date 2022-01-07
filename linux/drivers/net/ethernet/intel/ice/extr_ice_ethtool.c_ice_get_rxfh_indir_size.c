
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {int rss_table_size; } ;


 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ice_get_rxfh_indir_size(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);

 return np->vsi->rss_table_size;
}
