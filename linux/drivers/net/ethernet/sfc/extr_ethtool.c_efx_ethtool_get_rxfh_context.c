
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_rss_context {int rx_hash_key; int rx_indir_table; } ;
struct efx_nic {int rss_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* rx_pull_rss_context_config ) (struct efx_nic*,struct efx_rss_context*) ;int rx_hash_key_size; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int ETH_RSS_HASH_TOP ;
 struct efx_rss_context* efx_find_rss_context_entry (struct efx_nic*,int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct efx_rss_context*) ;

__attribute__((used)) static int efx_ethtool_get_rxfh_context(struct net_device *net_dev, u32 *indir,
     u8 *key, u8 *hfunc, u32 rss_context)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_rss_context *ctx;
 int rc = 0;

 if (!efx->type->rx_pull_rss_context_config)
  return -EOPNOTSUPP;

 mutex_lock(&efx->rss_lock);
 ctx = efx_find_rss_context_entry(efx, rss_context);
 if (!ctx) {
  rc = -ENOENT;
  goto out_unlock;
 }
 rc = efx->type->rx_pull_rss_context_config(efx, ctx);
 if (rc)
  goto out_unlock;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;
 if (indir)
  memcpy(indir, ctx->rx_indir_table, sizeof(ctx->rx_indir_table));
 if (key)
  memcpy(key, ctx->rx_hash_key, efx->type->rx_hash_key_size);
out_unlock:
 mutex_unlock(&efx->rss_lock);
 return rc;
}
