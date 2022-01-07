
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_respin_work {int work; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct mlxsw_sp_span_respin_work* kzalloc (int,int ) ;
 int mlxsw_core_schedule_work (int *) ;
 int mlxsw_sp_span_respin_work ;

__attribute__((used)) static void mlxsw_sp_span_respin_schedule(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_span_respin_work *respin_work;

 respin_work = kzalloc(sizeof(*respin_work), GFP_ATOMIC);
 if (!respin_work)
  return;

 INIT_WORK(&respin_work->work, mlxsw_sp_span_respin_work);
 respin_work->mlxsw_sp = mlxsw_sp;

 mlxsw_core_schedule_work(&respin_work->work);
}
