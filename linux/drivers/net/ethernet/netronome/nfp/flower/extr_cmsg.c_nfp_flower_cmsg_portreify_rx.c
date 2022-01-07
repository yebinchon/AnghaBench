
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_priv {int reify_wait_queue; int reify_replies; } ;
struct nfp_flower_cmsg_portreify {int portnum; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int atomic_inc (int *) ;
 int be32_to_cpu (int ) ;
 int nfp_app_dev_get (struct nfp_app*,int ,int *) ;
 struct nfp_flower_cmsg_portreify* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int wake_up (int *) ;

__attribute__((used)) static void
nfp_flower_cmsg_portreify_rx(struct nfp_app *app, struct sk_buff *skb)
{
 struct nfp_flower_priv *priv = app->priv;
 struct nfp_flower_cmsg_portreify *msg;
 bool exists;

 msg = nfp_flower_cmsg_get_data(skb);

 rcu_read_lock();
 exists = !!nfp_app_dev_get(app, be32_to_cpu(msg->portnum), ((void*)0));
 rcu_read_unlock();
 if (!exists) {
  nfp_flower_cmsg_warn(app, "ctrl msg for unknown port 0x%08x\n",
         be32_to_cpu(msg->portnum));
  return;
 }

 atomic_inc(&priv->reify_replies);
 wake_up(&priv->reify_wait_queue);
}
