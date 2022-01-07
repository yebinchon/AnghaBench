
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int unready; } ;


 int NOT_READY ;
 int flow_flag_clear (struct mlx5e_tc_flow*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void unready_flow_del(struct mlx5e_tc_flow *flow)
{
 list_del(&flow->unready);
 flow_flag_clear(flow, NOT_READY);
}
