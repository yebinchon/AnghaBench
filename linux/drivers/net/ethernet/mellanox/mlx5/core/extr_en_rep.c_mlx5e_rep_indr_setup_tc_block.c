
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int tc_indr_block_priv_list; } ;
struct mlx5e_rep_priv {TYPE_1__ uplink_priv; } ;
struct mlx5e_rep_indr_block_priv {int list; struct mlx5e_rep_priv* rpriv; struct net_device* netdev; } ;
struct flow_block_offload {scalar_t__ binder_type; int unlocked_driver_cb; int command; int block; int * driver_block_list; } ;
struct flow_block_cb {int driver_list; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int GFP_KERNEL ;
 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int ,struct mlx5e_rep_indr_block_priv*,struct mlx5e_rep_indr_block_priv*,int ) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct mlx5e_rep_indr_block_priv*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int kfree (struct mlx5e_rep_indr_block_priv*) ;
 struct mlx5e_rep_indr_block_priv* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mlx5e_block_cb_list ;
 struct mlx5e_rep_indr_block_priv* mlx5e_rep_indr_block_priv_lookup (struct mlx5e_rep_priv*,struct net_device*) ;
 int mlx5e_rep_indr_setup_block_cb ;
 int mlx5e_rep_indr_tc_block_unbind ;

__attribute__((used)) static int
mlx5e_rep_indr_setup_tc_block(struct net_device *netdev,
         struct mlx5e_rep_priv *rpriv,
         struct flow_block_offload *f)
{
 struct mlx5e_rep_indr_block_priv *indr_priv;
 struct flow_block_cb *block_cb;

 if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
  return -EOPNOTSUPP;

 f->unlocked_driver_cb = 1;
 f->driver_block_list = &mlx5e_block_cb_list;

 switch (f->command) {
 case 129:
  indr_priv = mlx5e_rep_indr_block_priv_lookup(rpriv, netdev);
  if (indr_priv)
   return -EEXIST;

  indr_priv = kmalloc(sizeof(*indr_priv), GFP_KERNEL);
  if (!indr_priv)
   return -ENOMEM;

  indr_priv->netdev = netdev;
  indr_priv->rpriv = rpriv;
  list_add(&indr_priv->list,
    &rpriv->uplink_priv.tc_indr_block_priv_list);

  block_cb = flow_block_cb_alloc(mlx5e_rep_indr_setup_block_cb,
            indr_priv, indr_priv,
            mlx5e_rep_indr_tc_block_unbind);
  if (IS_ERR(block_cb)) {
   list_del(&indr_priv->list);
   kfree(indr_priv);
   return PTR_ERR(block_cb);
  }
  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, &mlx5e_block_cb_list);

  return 0;
 case 128:
  indr_priv = mlx5e_rep_indr_block_priv_lookup(rpriv, netdev);
  if (!indr_priv)
   return -ENOENT;

  block_cb = flow_block_cb_lookup(f->block,
      mlx5e_rep_indr_setup_block_cb,
      indr_priv);
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
