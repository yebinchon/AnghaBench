
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nfp_reprs {int * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_port {int dummy; } ;
struct nfp_flower_repr_priv {struct nfp_repr* nfp_repr; } ;
struct nfp_flower_priv {TYPE_3__* nn; int reify_replies; } ;
struct nfp_eth_table {unsigned int count; TYPE_4__* ports; scalar_t__ max_index; } ;
struct nfp_app {int ctrl; int cpp; TYPE_5__* pf; } ;
struct net_device {int name; } ;
typedef int atomic_t ;
struct TYPE_11__ {struct nfp_eth_table* eth_tbl; } ;
struct TYPE_10__ {unsigned int index; int base; int nbi; } ;
struct TYPE_8__ {int netdev; } ;
struct TYPE_9__ {TYPE_2__ dp; TYPE_1__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfp_port*) ;
 int NFP_PORT_PHYS_PORT ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int PTR_ERR (struct nfp_port*) ;
 int RCU_INIT_POINTER (int ,struct net_device*) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int atomic_set (int *,int ) ;
 int kfree (struct nfp_flower_repr_priv*) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfp_flower_repr_priv* kzalloc (int,int ) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 struct nfp_reprs* nfp_app_reprs_set (struct nfp_app*,int ,struct nfp_reprs*) ;
 int nfp_ctrl_tx (int ,struct sk_buff*) ;
 int nfp_flower_cmsg_mac_repr_add (struct sk_buff*,unsigned int,int ,int ,unsigned int) ;
 struct sk_buff* nfp_flower_cmsg_mac_repr_start (struct nfp_app*,unsigned int) ;
 int nfp_flower_cmsg_phys_port (unsigned int) ;
 int nfp_flower_reprs_reify (struct nfp_app*,int ,int) ;
 int nfp_flower_wait_repr_reify (struct nfp_app*,int *,int) ;
 int nfp_info (int ,char*,unsigned int,int ) ;
 int nfp_net_get_mac_addr (TYPE_5__*,struct net_device*,struct nfp_port*) ;
 struct nfp_port* nfp_port_alloc (struct nfp_app*,int ,struct net_device*) ;
 int nfp_port_free (struct nfp_port*) ;
 int nfp_port_init_phy_port (TYPE_5__*,struct nfp_app*,struct nfp_port*,unsigned int) ;
 struct net_device* nfp_repr_alloc (struct nfp_app*) ;
 int nfp_repr_free (struct net_device*) ;
 int nfp_repr_init (struct nfp_app*,struct net_device*,int ,struct nfp_port*,int ) ;
 struct nfp_reprs* nfp_reprs_alloc (scalar_t__) ;
 int nfp_reprs_clean_and_free (struct nfp_app*,struct nfp_reprs*) ;
 int nfp_warn (int ,char*) ;

__attribute__((used)) static int
nfp_flower_spawn_phy_reprs(struct nfp_app *app, struct nfp_flower_priv *priv)
{
 struct nfp_eth_table *eth_tbl = app->pf->eth_tbl;
 atomic_t *replies = &priv->reify_replies;
 struct nfp_flower_repr_priv *repr_priv;
 struct nfp_repr *nfp_repr;
 struct sk_buff *ctrl_skb;
 struct nfp_reprs *reprs;
 int err, reify_cnt;
 unsigned int i;

 ctrl_skb = nfp_flower_cmsg_mac_repr_start(app, eth_tbl->count);
 if (!ctrl_skb)
  return -ENOMEM;

 reprs = nfp_reprs_alloc(eth_tbl->max_index + 1);
 if (!reprs) {
  err = -ENOMEM;
  goto err_free_ctrl_skb;
 }

 for (i = 0; i < eth_tbl->count; i++) {
  unsigned int phys_port = eth_tbl->ports[i].index;
  struct net_device *repr;
  struct nfp_port *port;
  u32 cmsg_port_id;

  repr = nfp_repr_alloc(app);
  if (!repr) {
   err = -ENOMEM;
   goto err_reprs_clean;
  }

  repr_priv = kzalloc(sizeof(*repr_priv), GFP_KERNEL);
  if (!repr_priv) {
   err = -ENOMEM;
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }

  nfp_repr = netdev_priv(repr);
  nfp_repr->app_priv = repr_priv;
  repr_priv->nfp_repr = nfp_repr;

  port = nfp_port_alloc(app, NFP_PORT_PHYS_PORT, repr);
  if (IS_ERR(port)) {
   err = PTR_ERR(port);
   kfree(repr_priv);
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }
  err = nfp_port_init_phy_port(app->pf, app, port, i);
  if (err) {
   kfree(repr_priv);
   nfp_port_free(port);
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }

  SET_NETDEV_DEV(repr, &priv->nn->pdev->dev);
  nfp_net_get_mac_addr(app->pf, repr, port);

  cmsg_port_id = nfp_flower_cmsg_phys_port(phys_port);
  err = nfp_repr_init(app, repr,
        cmsg_port_id, port, priv->nn->dp.netdev);
  if (err) {
   kfree(repr_priv);
   nfp_port_free(port);
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }

  nfp_flower_cmsg_mac_repr_add(ctrl_skb, i,
          eth_tbl->ports[i].nbi,
          eth_tbl->ports[i].base,
          phys_port);

  RCU_INIT_POINTER(reprs->reprs[phys_port], repr);
  nfp_info(app->cpp, "Phys Port %d Representor(%s) created\n",
    phys_port, repr->name);
 }

 nfp_app_reprs_set(app, NFP_REPR_TYPE_PHYS_PORT, reprs);
 atomic_set(replies, 0);
 reify_cnt = nfp_flower_reprs_reify(app, NFP_REPR_TYPE_PHYS_PORT, 1);
 if (reify_cnt < 0) {
  err = reify_cnt;
  nfp_warn(app->cpp, "Failed to notify firmware about repr creation\n");
  goto err_reprs_remove;
 }

 err = nfp_flower_wait_repr_reify(app, replies, reify_cnt);
 if (err)
  goto err_reprs_remove;

 nfp_ctrl_tx(app->ctrl, ctrl_skb);

 return 0;
err_reprs_remove:
 reprs = nfp_app_reprs_set(app, NFP_REPR_TYPE_PHYS_PORT, ((void*)0));
err_reprs_clean:
 nfp_reprs_clean_and_free(app, reprs);
err_free_ctrl_skb:
 kfree_skb(ctrl_skb);
 return err;
}
