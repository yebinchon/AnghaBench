
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_FLEX_PROTO_GENEVE ;
 int flex_parser_protocols ;

__attribute__((used)) static bool mlx5e_tc_tun_can_offload_geneve(struct mlx5e_priv *priv)
{
 return !!(MLX5_CAP_GEN(priv->mdev, flex_parser_protocols) & MLX5_FLEX_PROTO_GENEVE);
}
