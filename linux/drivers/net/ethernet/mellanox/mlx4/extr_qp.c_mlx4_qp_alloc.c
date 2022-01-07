
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_qp_table {int lock; } ;
struct mlx4_qp {int qpn; int free; int refcount; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct TYPE_2__ {int num_qps; } ;
struct mlx4_dev {TYPE_1__ caps; int qp_table_tree; } ;


 int EINVAL ;
 int init_completion (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_qp_alloc_icm (struct mlx4_dev*,int) ;
 int mlx4_qp_free_icm (struct mlx4_dev*,int) ;
 int radix_tree_insert (int *,int,struct mlx4_qp*) ;
 int refcount_set (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int mlx4_qp_alloc(struct mlx4_dev *dev, int qpn, struct mlx4_qp *qp)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;
 int err;

 if (!qpn)
  return -EINVAL;

 qp->qpn = qpn;

 err = mlx4_qp_alloc_icm(dev, qpn);
 if (err)
  return err;

 spin_lock_irq(&qp_table->lock);
 err = radix_tree_insert(&dev->qp_table_tree, qp->qpn &
    (dev->caps.num_qps - 1), qp);
 spin_unlock_irq(&qp_table->lock);
 if (err)
  goto err_icm;

 refcount_set(&qp->refcount, 1);
 init_completion(&qp->free);

 return 0;

err_icm:
 mlx4_qp_free_icm(dev, qpn);
 return err;
}
