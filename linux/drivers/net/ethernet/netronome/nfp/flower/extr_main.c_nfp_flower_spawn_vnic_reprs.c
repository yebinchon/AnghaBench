
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nfp_reprs {int * reprs; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_port {int pf_id; int vf_id; scalar_t__ vnic; } ;
struct nfp_flower_repr_priv {struct nfp_repr* nfp_repr; } ;
struct nfp_flower_priv {TYPE_3__* nn; int reify_replies; } ;
struct nfp_app {int cpp; TYPE_1__* pf; struct nfp_flower_priv* priv; } ;
struct net_device {int name; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
typedef enum nfp_port_type { ____Placeholder_nfp_port_type } nfp_port_type ;
typedef enum nfp_flower_cmsg_port_vnic_type { ____Placeholder_nfp_flower_cmsg_port_vnic_type } nfp_flower_cmsg_port_vnic_type ;
typedef int atomic_t ;
struct TYPE_5__ {int netdev; scalar_t__ ctrl_bar; } ;
struct TYPE_6__ {TYPE_2__ dp; } ;
struct TYPE_4__ {scalar_t__ vf_cfg_mem; int cpp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfp_port*) ;
 int NFP_NET_CFG_BAR_SZ ;
 int NFP_PORT_PF_PORT ;
 int NFP_PORT_VF_PORT ;
 int NFP_REPR_TYPE_PF ;
 int PTR_ERR (struct nfp_port*) ;
 int RCU_INIT_POINTER (int ,struct net_device*) ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int kfree (struct nfp_flower_repr_priv*) ;
 struct nfp_flower_repr_priv* kzalloc (int,int ) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 struct nfp_reprs* nfp_app_reprs_set (struct nfp_app*,int,struct nfp_reprs*) ;
 int nfp_cppcore_pcie_unit (int ) ;
 int nfp_flower_cmsg_pcie_port (int ,int,int,int const) ;
 int nfp_flower_reprs_reify (struct nfp_app*,int,int) ;
 int nfp_flower_wait_repr_reify (struct nfp_app*,int *,int) ;
 int nfp_info (int ,char*,char*,int,int ) ;
 struct nfp_port* nfp_port_alloc (struct nfp_app*,int,struct net_device*) ;
 int nfp_port_free (struct nfp_port*) ;
 struct net_device* nfp_repr_alloc (struct nfp_app*) ;
 int nfp_repr_free (struct net_device*) ;
 int nfp_repr_init (struct nfp_app*,struct net_device*,int ,struct nfp_port*,int ) ;
 struct nfp_reprs* nfp_reprs_alloc (unsigned int) ;
 int nfp_reprs_clean_and_free (struct nfp_app*,struct nfp_reprs*) ;
 int nfp_warn (int ,char*) ;

__attribute__((used)) static int
nfp_flower_spawn_vnic_reprs(struct nfp_app *app,
       enum nfp_flower_cmsg_port_vnic_type vnic_type,
       enum nfp_repr_type repr_type, unsigned int cnt)
{
 u8 nfp_pcie = nfp_cppcore_pcie_unit(app->pf->cpp);
 struct nfp_flower_priv *priv = app->priv;
 atomic_t *replies = &priv->reify_replies;
 struct nfp_flower_repr_priv *repr_priv;
 enum nfp_port_type port_type;
 struct nfp_repr *nfp_repr;
 struct nfp_reprs *reprs;
 int i, err, reify_cnt;
 const u8 queue = 0;

 port_type = repr_type == NFP_REPR_TYPE_PF ? NFP_PORT_PF_PORT :
          NFP_PORT_VF_PORT;

 reprs = nfp_reprs_alloc(cnt);
 if (!reprs)
  return -ENOMEM;

 for (i = 0; i < cnt; i++) {
  struct net_device *repr;
  struct nfp_port *port;
  u32 port_id;

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


  WARN_ON(repr_type == NFP_REPR_TYPE_PF && i);

  port = nfp_port_alloc(app, port_type, repr);
  if (IS_ERR(port)) {
   err = PTR_ERR(port);
   kfree(repr_priv);
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }
  if (repr_type == NFP_REPR_TYPE_PF) {
   port->pf_id = i;
   port->vnic = priv->nn->dp.ctrl_bar;
  } else {
   port->pf_id = 0;
   port->vf_id = i;
   port->vnic =
    app->pf->vf_cfg_mem + i * NFP_NET_CFG_BAR_SZ;
  }

  eth_hw_addr_random(repr);

  port_id = nfp_flower_cmsg_pcie_port(nfp_pcie, vnic_type,
          i, queue);
  err = nfp_repr_init(app, repr,
        port_id, port, priv->nn->dp.netdev);
  if (err) {
   kfree(repr_priv);
   nfp_port_free(port);
   nfp_repr_free(repr);
   goto err_reprs_clean;
  }

  RCU_INIT_POINTER(reprs->reprs[i], repr);
  nfp_info(app->cpp, "%s%d Representor(%s) created\n",
    repr_type == NFP_REPR_TYPE_PF ? "PF" : "VF", i,
    repr->name);
 }

 nfp_app_reprs_set(app, repr_type, reprs);

 atomic_set(replies, 0);
 reify_cnt = nfp_flower_reprs_reify(app, repr_type, 1);
 if (reify_cnt < 0) {
  err = reify_cnt;
  nfp_warn(app->cpp, "Failed to notify firmware about repr creation\n");
  goto err_reprs_remove;
 }

 err = nfp_flower_wait_repr_reify(app, replies, reify_cnt);
 if (err)
  goto err_reprs_remove;

 return 0;
err_reprs_remove:
 reprs = nfp_app_reprs_set(app, repr_type, ((void*)0));
err_reprs_clean:
 nfp_reprs_clean_and_free(app, reprs);
 return err;
}
