
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_mpt_entry {int flags; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_PERM_MASK ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

int mlx4_mr_hw_change_access(struct mlx4_dev *dev,
        struct mlx4_mpt_entry *mpt_entry,
        u32 access)
{
 u32 flags = (be32_to_cpu(mpt_entry->flags) & ~MLX4_PERM_MASK) |
      (access & MLX4_PERM_MASK);

 mpt_entry->flags = cpu_to_be32(flags);
 return 0;
}
