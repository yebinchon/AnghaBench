
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_flower_cmsg_hdr {int type; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
typedef enum nfp_flower_cmsg_type_port { ____Placeholder_nfp_flower_cmsg_type_port } nfp_flower_cmsg_type_port ;
 int NFP_FL_FEATS_FLOW_MERGE ;
 int NFP_FL_FEATS_LAG ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct nfp_flower_cmsg_hdr* nfp_flower_cmsg_get_hdr (struct sk_buff*) ;
 int nfp_flower_cmsg_merge_hint_rx (struct nfp_app*,struct sk_buff*) ;
 int nfp_flower_cmsg_portmod_rx (struct nfp_app*,struct sk_buff*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,int) ;
 int nfp_flower_lag_unprocessed_msg (struct nfp_app*,struct sk_buff*) ;
 int nfp_flower_stats_rlim_reply (struct nfp_app*,struct sk_buff*) ;
 int nfp_tunnel_keep_alive (struct nfp_app*,struct sk_buff*) ;
 int nfp_tunnel_request_route (struct nfp_app*,struct sk_buff*) ;

__attribute__((used)) static void
nfp_flower_cmsg_process_one_rx(struct nfp_app *app, struct sk_buff *skb)
{
 struct nfp_flower_priv *app_priv = app->priv;
 struct nfp_flower_cmsg_hdr *cmsg_hdr;
 enum nfp_flower_cmsg_type_port type;
 bool skb_stored = 0;

 cmsg_hdr = nfp_flower_cmsg_get_hdr(skb);

 type = cmsg_hdr->type;
 switch (type) {
 case 129:
  nfp_flower_cmsg_portmod_rx(app, skb);
  break;
 case 131:
  if (app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MERGE) {
   nfp_flower_cmsg_merge_hint_rx(app, skb);
   break;
  }
  goto err_default;
 case 130:
  nfp_tunnel_request_route(app, skb);
  break;
 case 133:
  nfp_tunnel_keep_alive(app, skb);
  break;
 case 128:
  nfp_flower_stats_rlim_reply(app, skb);
  break;
 case 132:
  if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG) {
   skb_stored = nfp_flower_lag_unprocessed_msg(app, skb);
   break;
  }

 default:
err_default:
  nfp_flower_cmsg_warn(app, "Cannot handle invalid repr control type %u\n",
         type);
  goto out;
 }

 if (!skb_stored)
  dev_consume_skb_any(skb);
 return;
out:
 dev_kfree_skb_any(skb);
}
