
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct tc_cls_matchall_offload {int stats; } ;
struct nfp_stat_pair {scalar_t__ bytes; scalar_t__ pkts; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct TYPE_2__ {int last_update; struct nfp_stat_pair prev_stats; struct nfp_stat_pair curr_stats; int netdev_port_id; } ;
struct nfp_flower_repr_priv {TYPE_1__ qos_table; } ;
struct nfp_flower_priv {int qos_stats_lock; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int flow_stats_update (int *,scalar_t__,scalar_t__,int ) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_netdev_is_nfp_repr (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfp_flower_stats_rate_limiter(struct nfp_app *app, struct net_device *netdev,
         struct tc_cls_matchall_offload *flow,
         struct netlink_ext_ack *extack)
{
 struct nfp_flower_priv *fl_priv = app->priv;
 struct nfp_flower_repr_priv *repr_priv;
 struct nfp_stat_pair *curr_stats;
 struct nfp_stat_pair *prev_stats;
 u64 diff_bytes, diff_pkts;
 struct nfp_repr *repr;

 if (!nfp_netdev_is_nfp_repr(netdev)) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: qos rate limit offload not supported on higher level port");
  return -EOPNOTSUPP;
 }
 repr = netdev_priv(netdev);

 repr_priv = repr->app_priv;
 if (!repr_priv->qos_table.netdev_port_id) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: cannot find qos entry for stats update");
  return -EOPNOTSUPP;
 }

 spin_lock_bh(&fl_priv->qos_stats_lock);
 curr_stats = &repr_priv->qos_table.curr_stats;
 prev_stats = &repr_priv->qos_table.prev_stats;
 diff_pkts = curr_stats->pkts - prev_stats->pkts;
 diff_bytes = curr_stats->bytes - prev_stats->bytes;
 prev_stats->pkts = curr_stats->pkts;
 prev_stats->bytes = curr_stats->bytes;
 spin_unlock_bh(&fl_priv->qos_stats_lock);

 flow_stats_update(&flow->stats, diff_bytes, diff_pkts,
     repr_priv->qos_table.last_update);
 return 0;
}
