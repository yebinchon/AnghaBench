
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int indr_block_cb_priv; } ;
struct nfp_flower_indr_block_cb_priv {int list; struct nfp_app* app; struct net_device* netdev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int block; } ;
struct flow_block_cb {int driver_list; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ;
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int GFP_KERNEL ;
 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int ,struct nfp_flower_indr_block_cb_priv*,struct nfp_flower_indr_block_cb_priv*,int ) ;
 int flow_block_cb_is_busy (int ,struct nfp_flower_indr_block_cb_priv*,int *) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct nfp_flower_indr_block_cb_priv*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int kfree (struct nfp_flower_indr_block_cb_priv*) ;
 struct nfp_flower_indr_block_cb_priv* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int nfp_block_cb_list ;
 struct nfp_flower_indr_block_cb_priv* nfp_flower_indr_block_cb_priv_lookup (struct nfp_app*,struct net_device*) ;
 scalar_t__ nfp_flower_internal_port_can_offload (struct nfp_app*,struct net_device*) ;
 int nfp_flower_setup_indr_block_cb ;
 int nfp_flower_setup_indr_tc_release ;

__attribute__((used)) static int
nfp_flower_setup_indr_tc_block(struct net_device *netdev, struct nfp_app *app,
          struct flow_block_offload *f)
{
 struct nfp_flower_indr_block_cb_priv *cb_priv;
 struct nfp_flower_priv *priv = app->priv;
 struct flow_block_cb *block_cb;

 if ((f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS &&
      !nfp_flower_internal_port_can_offload(app, netdev)) ||
     (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS &&
      nfp_flower_internal_port_can_offload(app, netdev)))
  return -EOPNOTSUPP;

 switch (f->command) {
 case 129:
  cb_priv = nfp_flower_indr_block_cb_priv_lookup(app, netdev);
  if (cb_priv &&
      flow_block_cb_is_busy(nfp_flower_setup_indr_block_cb,
       cb_priv,
       &nfp_block_cb_list))
   return -EBUSY;

  cb_priv = kmalloc(sizeof(*cb_priv), GFP_KERNEL);
  if (!cb_priv)
   return -ENOMEM;

  cb_priv->netdev = netdev;
  cb_priv->app = app;
  list_add(&cb_priv->list, &priv->indr_block_cb_priv);

  block_cb = flow_block_cb_alloc(nfp_flower_setup_indr_block_cb,
            cb_priv, cb_priv,
            nfp_flower_setup_indr_tc_release);
  if (IS_ERR(block_cb)) {
   list_del(&cb_priv->list);
   kfree(cb_priv);
   return PTR_ERR(block_cb);
  }

  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, &nfp_block_cb_list);
  return 0;
 case 128:
  cb_priv = nfp_flower_indr_block_cb_priv_lookup(app, netdev);
  if (!cb_priv)
   return -ENOENT;

  block_cb = flow_block_cb_lookup(f->block,
      nfp_flower_setup_indr_block_cb,
      cb_priv);
  if (!block_cb)
   return -ENOENT;

  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
