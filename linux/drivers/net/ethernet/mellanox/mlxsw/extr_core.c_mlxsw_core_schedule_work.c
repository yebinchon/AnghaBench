
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int mlxsw_owq ;
 int queue_work (int ,struct work_struct*) ;

bool mlxsw_core_schedule_work(struct work_struct *work)
{
 return queue_work(mlxsw_owq, work);
}
