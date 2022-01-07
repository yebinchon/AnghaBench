
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; int fs; int flow_type; } ;
struct ef4_nic {int n_rx_channels; } ;
typedef int s32 ;



 int EF4_FILTER_PRI_MANUAL ;
 unsigned int EF4_REV_FALCON_B0 ;
 int EOPNOTSUPP ;






 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;
 int RX_CLS_LOC_SPECIAL ;



 int ef4_ethtool_get_class_rule (struct ef4_nic*,int *) ;
 int ef4_filter_count_rx_used (struct ef4_nic*,int ) ;
 void* ef4_filter_get_rx_id_limit (struct ef4_nic*) ;
 int ef4_filter_get_rx_ids (struct ef4_nic*,int ,int *,int) ;
 unsigned int ef4_nic_rev (struct ef4_nic*) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ef4_ethtool_get_rxnfc(struct net_device *net_dev,
        struct ethtool_rxnfc *info, u32 *rule_locs)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 switch (info->cmd) {
 case 132:
  info->data = efx->n_rx_channels;
  return 0;

 case 133: {
  unsigned min_revision = 0;

  info->data = 0;
  switch (info->flow_type) {
  case 129:
   info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 128:
  case 130:
  case 137:
  case 131:
   info->data |= RXH_IP_SRC | RXH_IP_DST;
   min_revision = EF4_REV_FALCON_B0;
   break;
  default:
   break;
  }
  if (ef4_nic_rev(efx) < min_revision)
   info->data = 0;
  return 0;
 }

 case 135:
  info->data = ef4_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  info->data |= RX_CLS_LOC_SPECIAL;
  info->rule_cnt =
   ef4_filter_count_rx_used(efx, EF4_FILTER_PRI_MANUAL);
  return 0;

 case 134:
  if (ef4_filter_get_rx_id_limit(efx) == 0)
   return -EOPNOTSUPP;
  return ef4_ethtool_get_class_rule(efx, &info->fs);

 case 136: {
  s32 rc;
  info->data = ef4_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  rc = ef4_filter_get_rx_ids(efx, EF4_FILTER_PRI_MANUAL,
        rule_locs, info->rule_cnt);
  if (rc < 0)
   return rc;
  info->rule_cnt = rc;
  return 0;
 }

 default:
  return -EOPNOTSUPP;
 }
}
