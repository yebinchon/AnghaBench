
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int state; } ;


 int WARN_ON (int) ;
 int __ICE_SERVICE_SCHED ;
 int clear_bit (int ,int ) ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void ice_service_task_complete(struct ice_pf *pf)
{
 WARN_ON(!test_bit(__ICE_SERVICE_SCHED, pf->state));


 smp_mb__before_atomic();
 clear_bit(__ICE_SERVICE_SCHED, pf->state);
}
