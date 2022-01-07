
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int flags; } ;


 int clear_bit (unsigned long,int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void __flow_flag_clear(struct mlx5e_tc_flow *flow, unsigned long flag)
{

 smp_mb__before_atomic();
 clear_bit(flag, &flow->flags);
}
