
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; } ;


 int WARN_ON (int) ;
 int __FM10K_SERVICE_REQUEST ;
 int __FM10K_SERVICE_SCHED ;
 int clear_bit (int ,int ) ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;
 int smp_mb__before_atomic () ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void fm10k_service_event_complete(struct fm10k_intfc *interface)
{
 WARN_ON(!test_bit(__FM10K_SERVICE_SCHED, interface->state));


 smp_mb__before_atomic();
 clear_bit(__FM10K_SERVICE_SCHED, interface->state);





 if (test_bit(__FM10K_SERVICE_REQUEST, interface->state))
  fm10k_service_event_schedule(interface);
}
