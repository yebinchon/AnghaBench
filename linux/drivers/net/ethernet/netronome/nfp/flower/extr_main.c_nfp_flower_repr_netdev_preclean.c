
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int dummy; } ;
struct nfp_flower_priv {int reify_replies; } ;
struct nfp_app {int cpp; struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
typedef int atomic_t ;


 int atomic_set (int *,int ) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_flower_cmsg_portreify (struct nfp_repr*,int) ;
 int nfp_flower_wait_repr_reify (struct nfp_app*,int *,int) ;
 int nfp_warn (int ,char*) ;

__attribute__((used)) static void
nfp_flower_repr_netdev_preclean(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_flower_priv *priv = app->priv;
 atomic_t *replies = &priv->reify_replies;
 int err;

 atomic_set(replies, 0);
 err = nfp_flower_cmsg_portreify(repr, 0);
 if (err) {
  nfp_warn(app->cpp, "Failed to notify firmware about repr destruction\n");
  return;
 }

 nfp_flower_wait_repr_reify(app, replies, 1);
}
