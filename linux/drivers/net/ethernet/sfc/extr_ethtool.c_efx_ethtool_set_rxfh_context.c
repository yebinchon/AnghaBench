
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_rss_context {scalar_t__* rx_hash_key; int user_id; int * rx_indir_table; int context_id; } ;
struct efx_nic {int rss_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* rx_push_rss_context_config ) (struct efx_nic*,struct efx_rss_context*,int const*,scalar_t__ const*) ;} ;


 int EFX_EF10_RSS_CONTEXT_INVALID ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int ETH_RXFH_CONTEXT_ALLOC ;
 struct efx_rss_context* efx_alloc_rss_context_entry (struct efx_nic*) ;
 struct efx_rss_context* efx_find_rss_context_entry (struct efx_nic*,int ) ;
 int efx_free_rss_context_entry (struct efx_rss_context*) ;
 int efx_set_default_rx_indir_table (struct efx_nic*,struct efx_rss_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netdev_rss_key_fill (scalar_t__*,int) ;
 int stub1 (struct efx_nic*,struct efx_rss_context*,int const*,scalar_t__ const*) ;
 int stub2 (struct efx_nic*,struct efx_rss_context*,int const*,scalar_t__ const*) ;

__attribute__((used)) static int efx_ethtool_set_rxfh_context(struct net_device *net_dev,
     const u32 *indir, const u8 *key,
     const u8 hfunc, u32 *rss_context,
     bool delete)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_rss_context *ctx;
 bool allocated = 0;
 int rc;

 if (!efx->type->rx_push_rss_context_config)
  return -EOPNOTSUPP;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 mutex_lock(&efx->rss_lock);

 if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
  if (delete) {

   rc = -EINVAL;
   goto out_unlock;
  }
  ctx = efx_alloc_rss_context_entry(efx);
  if (!ctx) {
   rc = -ENOMEM;
   goto out_unlock;
  }
  ctx->context_id = EFX_EF10_RSS_CONTEXT_INVALID;

  efx_set_default_rx_indir_table(efx, ctx);
  netdev_rss_key_fill(ctx->rx_hash_key, sizeof(ctx->rx_hash_key));
  allocated = 1;
 } else {
  ctx = efx_find_rss_context_entry(efx, *rss_context);
  if (!ctx) {
   rc = -ENOENT;
   goto out_unlock;
  }
 }

 if (delete) {

  rc = efx->type->rx_push_rss_context_config(efx, ctx, ((void*)0), ((void*)0));
  if (!rc)
   efx_free_rss_context_entry(ctx);
  goto out_unlock;
 }

 if (!key)
  key = ctx->rx_hash_key;
 if (!indir)
  indir = ctx->rx_indir_table;

 rc = efx->type->rx_push_rss_context_config(efx, ctx, indir, key);
 if (rc && allocated)
  efx_free_rss_context_entry(ctx);
 else
  *rss_context = ctx->user_id;
out_unlock:
 mutex_unlock(&efx->rss_lock);
 return rc;
}
