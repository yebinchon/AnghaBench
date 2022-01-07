
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_rsc_common {int dummy; } ;


 int mlx5_core_put_rsc (struct mlx5_core_rsc_common*) ;

void mlx5_core_res_put(struct mlx5_core_rsc_common *res)
{
 mlx5_core_put_rsc(res);
}
