
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_qp_table {int lock; } ;
struct mlx4_qp {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_qp_table qp_table; } ;


 struct mlx4_qp* __mlx4_qp_lookup (struct mlx4_dev*,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct mlx4_qp *mlx4_qp_lookup(struct mlx4_dev *dev, u32 qpn)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 struct mlx4_qp *qp;

 spin_lock_irq(&qp_table->lock);

 qp = __mlx4_qp_lookup(dev, qpn);

 spin_unlock_irq(&qp_table->lock);
 return qp;
}
