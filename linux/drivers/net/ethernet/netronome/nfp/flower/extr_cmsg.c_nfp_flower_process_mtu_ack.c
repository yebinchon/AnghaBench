
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ requested_val; scalar_t__ portnum; int ack; int lock; int wait_q; } ;
struct nfp_flower_priv {TYPE_1__ mtu_conf; } ;
struct nfp_flower_cmsg_portmod {int info; int mtu; int portnum; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 struct nfp_flower_cmsg_portmod* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static bool
nfp_flower_process_mtu_ack(struct nfp_app *app, struct sk_buff *skb)
{
 struct nfp_flower_priv *app_priv = app->priv;
 struct nfp_flower_cmsg_portmod *msg;

 msg = nfp_flower_cmsg_get_data(skb);

 if (!(msg->info & NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY))
  return 0;

 spin_lock_bh(&app_priv->mtu_conf.lock);
 if (!app_priv->mtu_conf.requested_val ||
     app_priv->mtu_conf.portnum != be32_to_cpu(msg->portnum) ||
     be16_to_cpu(msg->mtu) != app_priv->mtu_conf.requested_val) {

  spin_unlock_bh(&app_priv->mtu_conf.lock);
  return 0;
 }

 app_priv->mtu_conf.ack = 1;
 app_priv->mtu_conf.requested_val = 0;
 wake_up(&app_priv->mtu_conf.wait_q);
 spin_unlock_bh(&app_priv->mtu_conf.lock);

 return 1;
}
