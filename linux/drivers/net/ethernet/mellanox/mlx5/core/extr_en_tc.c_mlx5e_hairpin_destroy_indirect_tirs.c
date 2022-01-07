
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_hairpin {int * indir_tirn; int func_mdev; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 int mlx5_core_destroy_tir (int ,int ) ;

__attribute__((used)) static void mlx5e_hairpin_destroy_indirect_tirs(struct mlx5e_hairpin *hp)
{
 int tt;

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  mlx5_core_destroy_tir(hp->func_mdev, hp->indir_tirn[tt]);
}
