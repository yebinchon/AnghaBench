
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;
 int MLX5E_NUM_INDIR_TIRS ;
 int MLX5E_TT_IPV4 ;
 int MLX5E_TT_IPV4_IPSEC_AH ;
 int MLX5E_TT_IPV4_IPSEC_ESP ;
 int MLX5E_TT_IPV4_TCP ;
 int MLX5E_TT_IPV4_UDP ;
 int MLX5E_TT_IPV6 ;
 int MLX5E_TT_IPV6_IPSEC_AH ;
 int MLX5E_TT_IPV6_IPSEC_ESP ;
 int MLX5E_TT_IPV6_TCP ;
 int MLX5E_TT_IPV6_UDP ;





__attribute__((used)) static enum mlx5e_traffic_types flow_type_to_traffic_type(u32 flow_type)
{
 switch (flow_type) {
 case 131:
  return MLX5E_TT_IPV4_TCP;
 case 130:
  return MLX5E_TT_IPV6_TCP;
 case 129:
  return MLX5E_TT_IPV4_UDP;
 case 128:
  return MLX5E_TT_IPV6_UDP;
 case 137:
  return MLX5E_TT_IPV4_IPSEC_AH;
 case 136:
  return MLX5E_TT_IPV6_IPSEC_AH;
 case 135:
  return MLX5E_TT_IPV4_IPSEC_ESP;
 case 134:
  return MLX5E_TT_IPV6_IPSEC_ESP;
 case 133:
  return MLX5E_TT_IPV4;
 case 132:
  return MLX5E_TT_IPV6;
 default:
  return MLX5E_NUM_INDIR_TIRS;
 }
}
