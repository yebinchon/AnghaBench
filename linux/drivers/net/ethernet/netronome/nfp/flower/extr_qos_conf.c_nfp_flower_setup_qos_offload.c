
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct tc_cls_matchall_offload {int command; TYPE_1__ common; } ;
struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int NFP_FL_FEATS_VF_RLIM ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;



 int nfp_flower_install_rate_limiter (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ;
 int nfp_flower_remove_rate_limiter (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ;
 int nfp_flower_stats_rate_limiter (struct nfp_app*,struct net_device*,struct tc_cls_matchall_offload*,struct netlink_ext_ack*) ;

int nfp_flower_setup_qos_offload(struct nfp_app *app, struct net_device *netdev,
     struct tc_cls_matchall_offload *flow)
{
 struct netlink_ext_ack *extack = flow->common.extack;
 struct nfp_flower_priv *fl_priv = app->priv;

 if (!(fl_priv->flower_ext_feats & NFP_FL_FEATS_VF_RLIM)) {
  NL_SET_ERR_MSG_MOD(extack, "unsupported offload: loaded firmware does not support qos rate limit offload");
  return -EOPNOTSUPP;
 }

 switch (flow->command) {
 case 129:
  return nfp_flower_install_rate_limiter(app, netdev, flow,
             extack);
 case 130:
  return nfp_flower_remove_rate_limiter(app, netdev, flow,
            extack);
 case 128:
  return nfp_flower_stats_rate_limiter(app, netdev, flow,
           extack);
 default:
  return -EOPNOTSUPP;
 }
}
