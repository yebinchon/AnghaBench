
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int flags; } ;


 int smp_mb__after_atomic () ;
 int test_bit (unsigned long,int *) ;

__attribute__((used)) static bool __flow_flag_test(struct mlx5e_tc_flow *flow, unsigned long flag)
{
 bool ret = test_bit(flag, &flow->flags);


 smp_mb__after_atomic();
 return ret;
}
