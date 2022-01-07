
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rx_indir_table; } ;
struct efx_nic {int n_rx_channels; TYPE_1__ rss_context; } ;


 int ARRAY_SIZE (int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 efx_ethtool_get_rxfh_indir_size(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx->n_rx_channels == 1)
  return 0;
 return ARRAY_SIZE(efx->rss_context.rx_indir_table);
}
