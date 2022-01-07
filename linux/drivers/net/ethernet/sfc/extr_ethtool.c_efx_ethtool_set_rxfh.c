
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__* rx_hash_key; int * rx_indir_table; } ;
struct efx_nic {TYPE_2__* type; TYPE_1__ rss_context; } ;
struct TYPE_4__ {int (* rx_push_rss_config ) (struct efx_nic*,int,int const*,scalar_t__ const*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int,int const*,scalar_t__ const*) ;

__attribute__((used)) static int efx_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct efx_nic *efx = netdev_priv(net_dev);


 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;
 if (!indir && !key)
  return 0;

 if (!key)
  key = efx->rss_context.rx_hash_key;
 if (!indir)
  indir = efx->rss_context.rx_indir_table;

 return efx->type->rx_push_rss_config(efx, 1, indir, key);
}
