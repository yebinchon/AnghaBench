
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {TYPE_1__* rtnl_link_ops; } ;
struct TYPE_2__ {int kind; } ;


 int NFP_FL_FEATS_FLOW_MERGE ;
 int strcmp (int ,char*) ;

__attribute__((used)) static inline bool
nfp_flower_internal_port_can_offload(struct nfp_app *app,
         struct net_device *netdev)
{
 struct nfp_flower_priv *app_priv = app->priv;

 if (!(app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MERGE))
  return 0;
 if (!netdev->rtnl_link_ops)
  return 0;
 if (!strcmp(netdev->rtnl_link_ops->kind, "openvswitch"))
  return 1;

 return 0;
}
