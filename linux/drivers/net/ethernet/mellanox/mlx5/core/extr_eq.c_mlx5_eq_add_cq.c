
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cq_table {int lock; int tree; } ;
struct mlx5_eq {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int cqn; } ;


 int radix_tree_insert (int *,int ,struct mlx5_core_cq*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mlx5_eq_add_cq(struct mlx5_eq *eq, struct mlx5_core_cq *cq)
{
 struct mlx5_cq_table *table = &eq->cq_table;
 int err;

 spin_lock(&table->lock);
 err = radix_tree_insert(&table->tree, cq->cqn, cq);
 spin_unlock(&table->lock);

 return err;
}
