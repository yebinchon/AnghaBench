
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_db {int dummy; } ;
struct TYPE_2__ {int numa_node; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_db_alloc_node (struct mlx5_core_dev*,struct mlx5_db*,int ) ;

int mlx5_db_alloc(struct mlx5_core_dev *dev, struct mlx5_db *db)
{
 return mlx5_db_alloc_node(dev, db, dev->priv.numa_node);
}
