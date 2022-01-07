
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int mlxsw_wq ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

int mlxsw_core_schedule_dw(struct delayed_work *dwork, unsigned long delay)
{
 return queue_delayed_work(mlxsw_wq, dwork, delay);
}
