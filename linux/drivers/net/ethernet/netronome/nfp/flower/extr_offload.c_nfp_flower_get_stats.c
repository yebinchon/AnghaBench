
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct nfp_flower_priv {int stats_lock; TYPE_3__* stats; } ;
struct TYPE_5__ {int host_ctx_id; } ;
struct nfp_fl_payload {int linked_flows; TYPE_2__ meta; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int stats; int cookie; TYPE_1__ common; } ;
struct TYPE_6__ {scalar_t__ bytes; scalar_t__ pkts; int used; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t be32_to_cpu (int ) ;
 int flow_stats_update (int *,scalar_t__,scalar_t__,int ) ;
 int list_empty (int *) ;
 struct nfp_fl_payload* nfp_flower_search_fl_table (struct nfp_app*,int ,struct net_device*) ;
 int nfp_flower_update_merge_stats (struct nfp_app*,struct nfp_fl_payload*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfp_flower_get_stats(struct nfp_app *app, struct net_device *netdev,
       struct flow_cls_offload *flow)
{
 struct nfp_flower_priv *priv = app->priv;
 struct netlink_ext_ack *extack = ((void*)0);
 struct nfp_fl_payload *nfp_flow;
 u32 ctx_id;

 extack = flow->common.extack;
 nfp_flow = nfp_flower_search_fl_table(app, flow->cookie, netdev);
 if (!nfp_flow) {
  NL_SET_ERR_MSG_MOD(extack, "invalid entry: cannot dump stats for flow that does not exist");
  return -EINVAL;
 }

 ctx_id = be32_to_cpu(nfp_flow->meta.host_ctx_id);

 spin_lock_bh(&priv->stats_lock);

 if (!list_empty(&nfp_flow->linked_flows))
  nfp_flower_update_merge_stats(app, nfp_flow);

 flow_stats_update(&flow->stats, priv->stats[ctx_id].bytes,
     priv->stats[ctx_id].pkts, priv->stats[ctx_id].used);

 priv->stats[ctx_id].pkts = 0;
 priv->stats[ctx_id].bytes = 0;
 spin_unlock_bh(&priv->stats_lock);

 return 0;
}
