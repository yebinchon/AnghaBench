
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {void* tx_failed_cnt; void* drop_blind; void* fwd_bcast_cnt; void* fwd_unicast_cnt; void* fwd_drop_nobuf; void* fwd_drop_noroute; void* fwd_drop_ttl; void* fwd_drop_rbt; } ;
struct lbs_private {TYPE_1__ mstats; } ;
struct ethtool_stats {int dummy; } ;
struct cmd_ds_mesh_access {int * data; } ;


 int CMD_ACT_MESH_GET_STATS ;
 int MESH_STATS_NUM ;
 int lbs_mesh_access (struct lbs_private*,int ,struct cmd_ds_mesh_access*) ;
 void* le32_to_cpu (int ) ;
 int memset (void**,int ,int) ;

void lbs_mesh_ethtool_get_stats(struct net_device *dev,
 struct ethtool_stats *stats, uint64_t *data)
{
 struct lbs_private *priv = dev->ml_priv;
 struct cmd_ds_mesh_access mesh_access;
 int ret;


 ret = lbs_mesh_access(priv, CMD_ACT_MESH_GET_STATS, &mesh_access);

 if (ret) {
  memset(data, 0, MESH_STATS_NUM*(sizeof(uint64_t)));
  return;
 }

 priv->mstats.fwd_drop_rbt = le32_to_cpu(mesh_access.data[0]);
 priv->mstats.fwd_drop_ttl = le32_to_cpu(mesh_access.data[1]);
 priv->mstats.fwd_drop_noroute = le32_to_cpu(mesh_access.data[2]);
 priv->mstats.fwd_drop_nobuf = le32_to_cpu(mesh_access.data[3]);
 priv->mstats.fwd_unicast_cnt = le32_to_cpu(mesh_access.data[4]);
 priv->mstats.fwd_bcast_cnt = le32_to_cpu(mesh_access.data[5]);
 priv->mstats.drop_blind = le32_to_cpu(mesh_access.data[6]);
 priv->mstats.tx_failed_cnt = le32_to_cpu(mesh_access.data[7]);

 data[0] = priv->mstats.fwd_drop_rbt;
 data[1] = priv->mstats.fwd_drop_ttl;
 data[2] = priv->mstats.fwd_drop_noroute;
 data[3] = priv->mstats.fwd_drop_nobuf;
 data[4] = priv->mstats.fwd_unicast_cnt;
 data[5] = priv->mstats.fwd_bcast_cnt;
 data[6] = priv->mstats.drop_blind;
 data[7] = priv->mstats.tx_failed_cnt;
}
