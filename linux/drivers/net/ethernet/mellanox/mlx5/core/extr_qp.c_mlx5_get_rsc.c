
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_qp_table {int lock; int tree; } ;
struct mlx5_core_rsc_common {int refcount; } ;


 struct mlx5_core_rsc_common* radix_tree_lookup (int *,int ) ;
 int refcount_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct mlx5_core_rsc_common *
mlx5_get_rsc(struct mlx5_qp_table *table, u32 rsn)
{
 struct mlx5_core_rsc_common *common;
 unsigned long flags;

 spin_lock_irqsave(&table->lock, flags);

 common = radix_tree_lookup(&table->tree, rsn);
 if (common)
  refcount_inc(&common->refcount);

 spin_unlock_irqrestore(&table->lock, flags);

 return common;
}
