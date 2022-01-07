
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int dummy; } ;


 int EGRESS ;
 int INGRESS ;
 int MLX5_TC_FLAG (int ) ;
 int flow_flag_test (struct mlx5e_tc_flow*,int ) ;

__attribute__((used)) static bool same_flow_direction(struct mlx5e_tc_flow *flow, int flags)
{
 bool dir_ingress = !!(flags & MLX5_TC_FLAG(INGRESS));
 bool dir_egress = !!(flags & MLX5_TC_FLAG(EGRESS));

 return flow_flag_test(flow, INGRESS) == dir_ingress &&
  flow_flag_test(flow, EGRESS) == dir_egress;
}
