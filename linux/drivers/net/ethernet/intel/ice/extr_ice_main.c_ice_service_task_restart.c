
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int state; } ;


 int __ICE_SERVICE_DIS ;
 int clear_bit (int ,int ) ;
 int ice_service_task_schedule (struct ice_pf*) ;

__attribute__((used)) static void ice_service_task_restart(struct ice_pf *pf)
{
 clear_bit(__ICE_SERVICE_DIS, pf->state);
 ice_service_task_schedule(pf);
}
