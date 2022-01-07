
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfp_police_cfg_head {int port; } ;
struct nfp_flower_priv {TYPE_1__* app; } ;
struct TYPE_2__ {int ctrl; } ;


 int GFP_ATOMIC ;
 int NFP_FLOWER_CMSG_TYPE_QOS_STATS ;
 int cpu_to_be32 (int ) ;
 int memset (struct nfp_police_cfg_head*,int ,int) ;
 int nfp_ctrl_tx (int ,struct sk_buff*) ;
 struct sk_buff* nfp_flower_cmsg_alloc (TYPE_1__*,int,int ,int ) ;
 struct nfp_police_cfg_head* nfp_flower_cmsg_get_data (struct sk_buff*) ;

__attribute__((used)) static void
nfp_flower_stats_rlim_request(struct nfp_flower_priv *fl_priv,
         u32 netdev_port_id)
{
 struct nfp_police_cfg_head *head;
 struct sk_buff *skb;

 skb = nfp_flower_cmsg_alloc(fl_priv->app,
        sizeof(struct nfp_police_cfg_head),
        NFP_FLOWER_CMSG_TYPE_QOS_STATS,
        GFP_ATOMIC);
 if (!skb)
  return;

 head = nfp_flower_cmsg_get_data(skb);
 memset(head, 0, sizeof(struct nfp_police_cfg_head));
 head->port = cpu_to_be32(netdev_port_id);

 nfp_ctrl_tx(fl_priv->app->ctrl, skb);
}
