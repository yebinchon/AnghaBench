
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct nfp_flower_repr_priv {int block_shared; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int command; int block; int * driver_block_list; int block_shared; } ;
struct flow_block_cb {int driver_list; } ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int ,struct nfp_repr*,struct nfp_repr*,int *) ;
 int flow_block_cb_is_busy (int ,struct nfp_repr*,int *) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct nfp_repr*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_block_cb_list ;
 int nfp_flower_setup_tc_block_cb ;

__attribute__((used)) static int nfp_flower_setup_tc_block(struct net_device *netdev,
         struct flow_block_offload *f)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_flower_repr_priv *repr_priv;
 struct flow_block_cb *block_cb;

 if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
  return -EOPNOTSUPP;

 repr_priv = repr->app_priv;
 repr_priv->block_shared = f->block_shared;
 f->driver_block_list = &nfp_block_cb_list;

 switch (f->command) {
 case 129:
  if (flow_block_cb_is_busy(nfp_flower_setup_tc_block_cb, repr,
       &nfp_block_cb_list))
   return -EBUSY;

  block_cb = flow_block_cb_alloc(nfp_flower_setup_tc_block_cb,
            repr, repr, ((void*)0));
  if (IS_ERR(block_cb))
   return PTR_ERR(block_cb);

  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, &nfp_block_cb_list);
  return 0;
 case 128:
  block_cb = flow_block_cb_lookup(f->block,
      nfp_flower_setup_tc_block_cb,
      repr);
  if (!block_cb)
   return -ENOENT;

  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
