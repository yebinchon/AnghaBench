
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; } ;


 int __FM10K_RESET_SUSPENDED ;
 scalar_t__ fm10k_prepare_for_reset (struct fm10k_intfc*) ;
 int fm10k_stop_service_event (struct fm10k_intfc*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void fm10k_prepare_suspend(struct fm10k_intfc *interface)
{
 fm10k_stop_service_event(interface);

 if (fm10k_prepare_for_reset(interface))
  set_bit(__FM10K_RESET_SUSPENDED, interface->state);
}
