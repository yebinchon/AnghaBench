
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mlx5e_self_tests ;

int mlx5e_self_test_num(struct mlx5e_priv *priv)
{
 return ARRAY_SIZE(mlx5e_self_tests);
}
