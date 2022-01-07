
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cq_table {int lock; int tree; } ;
struct mlx5_eq {int eqn; int dev; struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int cqn; } ;


 int mlx5_core_dbg (int ,char*,int ,int ) ;
 struct mlx5_core_cq* radix_tree_delete (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx5_eq_del_cq(struct mlx5_eq *eq, struct mlx5_core_cq *cq)
{
 struct mlx5_cq_table *table = &eq->cq_table;
 struct mlx5_core_cq *tmp;

 spin_lock(&table->lock);
 tmp = radix_tree_delete(&table->tree, cq->cqn);
 spin_unlock(&table->lock);

 if (!tmp) {
  mlx5_core_dbg(eq->dev, "cq 0x%x not found in eq 0x%x tree\n",
         eq->eqn, cq->cqn);
  return;
 }

 if (tmp != cq)
  mlx5_core_dbg(eq->dev, "corruption on cqn 0x%x in eq 0x%x\n",
         eq->eqn, cq->cqn);
}
