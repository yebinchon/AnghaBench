
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int state; } ;


 int __FM10K_RESETTING ;
 int fm10k_iov_mbx (struct fm10k_intfc*) ;
 int fm10k_watchdog_update_host_state (struct fm10k_intfc*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void fm10k_mbx_subtask(struct fm10k_intfc *interface)
{

 if (test_bit(__FM10K_RESETTING, interface->state))
  return;


 fm10k_watchdog_update_host_state(interface);


 fm10k_iov_mbx(interface);
}
