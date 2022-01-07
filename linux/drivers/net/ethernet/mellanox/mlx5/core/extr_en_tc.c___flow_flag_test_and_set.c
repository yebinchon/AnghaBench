
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int flags; } ;


 int test_and_set_bit (unsigned long,int *) ;

__attribute__((used)) static bool __flow_flag_test_and_set(struct mlx5e_tc_flow *flow,
         unsigned long flag)
{

 return test_and_set_bit(flag, &flow->flags);
}
