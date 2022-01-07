
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int serv_task; int state; } ;


 int __ICE_NEEDS_RESTART ;
 int __ICE_SERVICE_DIS ;
 int __ICE_SERVICE_SCHED ;
 int ice_wq ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ice_service_task_schedule(struct ice_pf *pf)
{
 if (!test_bit(__ICE_SERVICE_DIS, pf->state) &&
     !test_and_set_bit(__ICE_SERVICE_SCHED, pf->state) &&
     !test_bit(__ICE_NEEDS_RESTART, pf->state))
  queue_work(ice_wq, &pf->serv_task);
}
