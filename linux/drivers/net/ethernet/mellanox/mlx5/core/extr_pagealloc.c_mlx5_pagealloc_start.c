
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg_nb; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int MLX5_NB_INIT (int *,int ,int ) ;
 int PAGE_REQUEST ;
 int mlx5_eq_notifier_register (struct mlx5_core_dev*,int *) ;
 int req_pages_handler ;

void mlx5_pagealloc_start(struct mlx5_core_dev *dev)
{
 MLX5_NB_INIT(&dev->priv.pg_nb, req_pages_handler, PAGE_REQUEST);
 mlx5_eq_notifier_register(dev, &dev->priv.pg_nb);
}
