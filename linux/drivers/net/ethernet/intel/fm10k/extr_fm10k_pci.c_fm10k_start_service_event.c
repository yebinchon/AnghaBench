
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; } ;


 int __FM10K_SERVICE_DISABLE ;
 int clear_bit (int ,int ) ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;

__attribute__((used)) static void fm10k_start_service_event(struct fm10k_intfc *interface)
{
 clear_bit(__FM10K_SERVICE_DISABLE, interface->state);
 fm10k_service_event_schedule(interface);
}
