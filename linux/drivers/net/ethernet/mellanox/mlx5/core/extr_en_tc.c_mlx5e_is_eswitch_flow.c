
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int dummy; } ;


 int ESWITCH ;
 int flow_flag_test (struct mlx5e_tc_flow*,int ) ;

__attribute__((used)) static bool mlx5e_is_eswitch_flow(struct mlx5e_tc_flow *flow)
{
 return flow_flag_test(flow, ESWITCH);
}
