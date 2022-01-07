
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int flags; int tx_timeout_count; int state; } ;


 int FM10K_FLAG_RESET_REQUESTED ;
 int __FM10K_DOWN ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;
 int set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

void fm10k_tx_timeout_reset(struct fm10k_intfc *interface)
{

 if (!test_bit(__FM10K_DOWN, interface->state)) {
  interface->tx_timeout_count++;
  set_bit(FM10K_FLAG_RESET_REQUESTED, interface->flags);
  fm10k_service_event_schedule(interface);
 }
}
