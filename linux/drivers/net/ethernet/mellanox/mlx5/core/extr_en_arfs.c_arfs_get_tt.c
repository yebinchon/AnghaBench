
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;
typedef enum arfs_type { ____Placeholder_arfs_type } arfs_type ;






 int EINVAL ;
 int MLX5E_TT_IPV4_TCP ;
 int MLX5E_TT_IPV4_UDP ;
 int MLX5E_TT_IPV6_TCP ;
 int MLX5E_TT_IPV6_UDP ;

__attribute__((used)) static enum mlx5e_traffic_types arfs_get_tt(enum arfs_type type)
{
 switch (type) {
 case 131:
  return MLX5E_TT_IPV4_TCP;
 case 130:
  return MLX5E_TT_IPV4_UDP;
 case 129:
  return MLX5E_TT_IPV6_TCP;
 case 128:
  return MLX5E_TT_IPV6_UDP;
 default:
  return -EINVAL;
 }
}
