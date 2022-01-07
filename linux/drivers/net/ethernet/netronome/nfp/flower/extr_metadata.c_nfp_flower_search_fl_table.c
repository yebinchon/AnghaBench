
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int flow_table; } ;
struct nfp_fl_payload {int dummy; } ;
struct nfp_fl_flow_table_cmp_arg {unsigned long cookie; struct net_device* netdev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 int nfp_flower_table_params ;
 struct nfp_fl_payload* rhashtable_lookup_fast (int *,struct nfp_fl_flow_table_cmp_arg*,int ) ;

struct nfp_fl_payload *
nfp_flower_search_fl_table(struct nfp_app *app, unsigned long tc_flower_cookie,
      struct net_device *netdev)
{
 struct nfp_fl_flow_table_cmp_arg flower_cmp_arg;
 struct nfp_flower_priv *priv = app->priv;

 flower_cmp_arg.netdev = netdev;
 flower_cmp_arg.cookie = tc_flower_cookie;

 return rhashtable_lookup_fast(&priv->flow_table, &flower_cmp_arg,
          nfp_flower_table_params);
}
