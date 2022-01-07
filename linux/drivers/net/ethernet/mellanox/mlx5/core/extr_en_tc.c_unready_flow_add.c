
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int unready; } ;
struct list_head {int dummy; } ;


 int NOT_READY ;
 int flow_flag_set (struct mlx5e_tc_flow*,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void unready_flow_add(struct mlx5e_tc_flow *flow,
        struct list_head *unready_flows)
{
 flow_flag_set(flow, NOT_READY);
 list_add_tail(&flow->unready, unready_flows);
}
