
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 int MLX5_CAP_ESW (int ,int ) ;
 int nvgre_encap_decap ;

__attribute__((used)) static bool mlx5e_tc_tun_can_offload_gretap(struct mlx5e_priv *priv)
{
 return !!MLX5_CAP_ESW(priv->mdev, nvgre_encap_decap);
}
