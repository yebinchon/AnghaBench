
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* rx_push_rss_config ) (struct ef4_nic*,int,int const*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,int,int const*) ;

__attribute__((used)) static int ef4_ethtool_set_rxfh(struct net_device *net_dev, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct ef4_nic *efx = netdev_priv(net_dev);


 if (key ||
     (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP))
  return -EOPNOTSUPP;
 if (!indir)
  return 0;

 return efx->type->rx_push_rss_config(efx, 1, indir);
}
