
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cq_table {int tree; } ;
struct mlx5_eq {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_cq {int dummy; } ;


 scalar_t__ likely (struct mlx5_core_cq*) ;
 int mlx5_cq_hold (struct mlx5_core_cq*) ;
 struct mlx5_core_cq* radix_tree_lookup (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct mlx5_core_cq *mlx5_eq_cq_get(struct mlx5_eq *eq, u32 cqn)
{
 struct mlx5_cq_table *table = &eq->cq_table;
 struct mlx5_core_cq *cq = ((void*)0);

 rcu_read_lock();
 cq = radix_tree_lookup(&table->tree, cqn);
 if (likely(cq))
  mlx5_cq_hold(cq);
 rcu_read_unlock();

 return cq;
}
