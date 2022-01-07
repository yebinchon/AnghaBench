
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; } ;
struct TYPE_3__ {scalar_t__ function; } ;
struct ice_pf {int state; TYPE_2__ serv_task; TYPE_1__ serv_tmr; } ;


 int __ICE_SERVICE_DIS ;
 int __ICE_SERVICE_SCHED ;
 int cancel_work_sync (TYPE_2__*) ;
 int clear_bit (int ,int ) ;
 int del_timer_sync (TYPE_1__*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void ice_service_task_stop(struct ice_pf *pf)
{
 set_bit(__ICE_SERVICE_DIS, pf->state);

 if (pf->serv_tmr.function)
  del_timer_sync(&pf->serv_tmr);
 if (pf->serv_task.func)
  cancel_work_sync(&pf->serv_task);

 clear_bit(__ICE_SERVICE_SCHED, pf->state);
}
