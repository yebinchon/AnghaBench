
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int next_stats_update; scalar_t__ host_ready; int state; } ;


 int __FM10K_DOWN ;
 int __FM10K_RESETTING ;
 int fm10k_update_stats (struct fm10k_intfc*) ;
 int fm10k_watchdog_flush_tx (struct fm10k_intfc*) ;
 int fm10k_watchdog_host_is_ready (struct fm10k_intfc*) ;
 int fm10k_watchdog_host_not_ready (struct fm10k_intfc*) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ time_is_before_jiffies (int ) ;

__attribute__((used)) static void fm10k_watchdog_subtask(struct fm10k_intfc *interface)
{

 if (test_bit(__FM10K_DOWN, interface->state) ||
     test_bit(__FM10K_RESETTING, interface->state))
  return;

 if (interface->host_ready)
  fm10k_watchdog_host_is_ready(interface);
 else
  fm10k_watchdog_host_not_ready(interface);


 if (time_is_before_jiffies(interface->next_stats_update))
  fm10k_update_stats(interface);


 fm10k_watchdog_flush_tx(interface);
}
