
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_hairpin {int tdn; int func_mdev; int tirn; } ;


 int mlx5_core_dealloc_transport_domain (int ,int ) ;
 int mlx5_core_destroy_tir (int ,int ) ;

__attribute__((used)) static void mlx5e_hairpin_destroy_transport(struct mlx5e_hairpin *hp)
{
 mlx5_core_destroy_tir(hp->func_mdev, hp->tirn);
 mlx5_core_dealloc_transport_domain(hp->func_mdev, hp->tdn);
}
