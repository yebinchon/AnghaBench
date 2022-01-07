
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib6_event_work {int nrt6; int * rt_arr; } ;


 int kfree (int *) ;
 int mlxsw_sp_rt6_release (int ) ;

__attribute__((used)) static void
mlxsw_sp_router_fib6_work_fini(struct mlxsw_sp_fib6_event_work *fib6_work)
{
 int i;

 for (i = 0; i < fib6_work->nrt6; i++)
  mlxsw_sp_rt6_release(fib6_work->rt_arr[i]);
 kfree(fib6_work->rt_arr);
}
