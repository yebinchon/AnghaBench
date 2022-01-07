
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mkey_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int WARN_ON (int) ;
 int xa_empty (int *) ;

void mlx5_cleanup_mkey_table(struct mlx5_core_dev *dev)
{
 WARN_ON(!xa_empty(&dev->priv.mkey_table));
}
