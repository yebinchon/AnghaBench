
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ft_underlay_qp {int list; int qpn; } ;
struct mlx5_flow_root_namespace {int chain_lock; int underlay_qpns; int root_ft; TYPE_3__* cmds; } ;
struct TYPE_5__ {TYPE_1__* steering; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_6__ {int (* update_root_ft ) (struct mlx5_flow_root_namespace*,int ,int ,int) ;} ;
struct TYPE_4__ {struct mlx5_flow_root_namespace* root_ns; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mlx5_ft_underlay_qp*) ;
 struct mlx5_ft_underlay_qp* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mlx5_flow_root_namespace*,int ,int ,int) ;

int mlx5_fs_add_rx_underlay_qpn(struct mlx5_core_dev *dev, u32 underlay_qpn)
{
 struct mlx5_flow_root_namespace *root = dev->priv.steering->root_ns;
 struct mlx5_ft_underlay_qp *new_uqp;
 int err = 0;

 new_uqp = kzalloc(sizeof(*new_uqp), GFP_KERNEL);
 if (!new_uqp)
  return -ENOMEM;

 mutex_lock(&root->chain_lock);

 if (!root->root_ft) {
  err = -EINVAL;
  goto update_ft_fail;
 }

 err = root->cmds->update_root_ft(root, root->root_ft, underlay_qpn,
      0);
 if (err) {
  mlx5_core_warn(dev, "Failed adding underlay QPN (%u) to root FT err(%d)\n",
          underlay_qpn, err);
  goto update_ft_fail;
 }

 new_uqp->qpn = underlay_qpn;
 list_add_tail(&new_uqp->list, &root->underlay_qpns);

 mutex_unlock(&root->chain_lock);

 return 0;

update_ft_fail:
 mutex_unlock(&root->chain_lock);
 kfree(new_uqp);
 return err;
}
