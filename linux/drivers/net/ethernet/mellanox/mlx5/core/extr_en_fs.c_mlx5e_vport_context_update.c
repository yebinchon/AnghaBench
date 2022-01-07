
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_l2_table {int promisc_enabled; int allmulti_enabled; } ;
struct TYPE_2__ {struct mlx5e_l2_table l2; } ;
struct mlx5e_priv {int mdev; TYPE_1__ fs; } ;


 int MLX5_NVPRT_LIST_TYPE_MC ;
 int MLX5_NVPRT_LIST_TYPE_UC ;
 int mlx5_modify_nic_vport_promisc (int ,int ,int ,int ) ;
 int mlx5e_vport_context_update_addr_list (struct mlx5e_priv*,int ) ;

__attribute__((used)) static void mlx5e_vport_context_update(struct mlx5e_priv *priv)
{
 struct mlx5e_l2_table *ea = &priv->fs.l2;

 mlx5e_vport_context_update_addr_list(priv, MLX5_NVPRT_LIST_TYPE_UC);
 mlx5e_vport_context_update_addr_list(priv, MLX5_NVPRT_LIST_TYPE_MC);
 mlx5_modify_nic_vport_promisc(priv->mdev, 0,
          ea->allmulti_enabled,
          ea->promisc_enabled);
}
