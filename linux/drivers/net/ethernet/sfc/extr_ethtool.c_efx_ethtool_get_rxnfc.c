
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flow_type; } ;
struct ethtool_rxnfc {int cmd; int data; int flow_type; int rule_cnt; int rss_context; TYPE_1__ fs; } ;
struct efx_rss_context {int rx_hash_udp_4tuple; } ;
struct efx_nic {int n_rx_channels; int rss_lock; struct efx_rss_context rss_context; } ;
typedef int s32 ;




 int EFX_FILTER_PRI_MANUAL ;
 int ENOENT ;
 int EOPNOTSUPP ;





 int FLOW_RSS ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;
 int RX_CLS_LOC_SPECIAL ;






 int efx_ethtool_get_class_rule (struct efx_nic*,TYPE_1__*,int *) ;
 int efx_filter_count_rx_used (struct efx_nic*,int ) ;
 void* efx_filter_get_rx_id_limit (struct efx_nic*) ;
 int efx_filter_get_rx_ids (struct efx_nic*,int ,int *,int) ;
 struct efx_rss_context* efx_find_rss_context_entry (struct efx_nic*,int ) ;
 int efx_rss_active (struct efx_rss_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
efx_ethtool_get_rxnfc(struct net_device *net_dev,
        struct ethtool_rxnfc *info, u32 *rule_locs)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 u32 rss_context = 0;
 s32 rc = 0;

 switch (info->cmd) {
 case 136:
  info->data = efx->n_rx_channels;
  return 0;

 case 137: {
  struct efx_rss_context *ctx = &efx->rss_context;

  mutex_lock(&efx->rss_lock);
  if (info->flow_type & FLOW_RSS && info->rss_context) {
   ctx = efx_find_rss_context_entry(efx, info->rss_context);
   if (!ctx) {
    rc = -ENOENT;
    goto out_unlock;
   }
  }
  info->data = 0;
  if (!efx_rss_active(ctx))
   goto out_unlock;
  switch (info->flow_type & ~FLOW_RSS) {
  case 129:
   if (ctx->rx_hash_udp_4tuple)

  case 131:
    info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 133:
  case 142:
  case 135:
   info->data |= RXH_IP_SRC | RXH_IP_DST;
   break;
  case 128:
   if (ctx->rx_hash_udp_4tuple)

  case 130:
    info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 132:
  case 141:
  case 134:
   info->data |= RXH_IP_SRC | RXH_IP_DST;
   break;
  default:
   break;
  }
out_unlock:
  mutex_unlock(&efx->rss_lock);
  return rc;
 }

 case 139:
  info->data = efx_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  info->data |= RX_CLS_LOC_SPECIAL;
  info->rule_cnt =
   efx_filter_count_rx_used(efx, EFX_FILTER_PRI_MANUAL);
  return 0;

 case 138:
  if (efx_filter_get_rx_id_limit(efx) == 0)
   return -EOPNOTSUPP;
  rc = efx_ethtool_get_class_rule(efx, &info->fs, &rss_context);
  if (rc < 0)
   return rc;
  if (info->fs.flow_type & FLOW_RSS)
   info->rss_context = rss_context;
  return 0;

 case 140:
  info->data = efx_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  rc = efx_filter_get_rx_ids(efx, EFX_FILTER_PRI_MANUAL,
        rule_locs, info->rule_cnt);
  if (rc < 0)
   return rc;
  info->rule_cnt = rc;
  return 0;

 default:
  return -EOPNOTSUPP;
 }
}
