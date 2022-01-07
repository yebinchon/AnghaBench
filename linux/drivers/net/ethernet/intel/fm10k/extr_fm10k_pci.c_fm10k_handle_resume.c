
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* rebind_hw_stats ) (struct fm10k_hw*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int host_ready; int state; scalar_t__ link_down_event; int stats; TYPE_3__* pdev; struct fm10k_hw hw; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ HZ ;
 int __FM10K_LINK_DOWN ;
 int __FM10K_RESET_SUSPENDED ;
 int dev_warn (int *,char*) ;
 int fm10k_handle_reset (struct fm10k_intfc*) ;
 int fm10k_macvlan_schedule (struct fm10k_intfc*) ;
 int fm10k_start_service_event (struct fm10k_intfc*) ;
 int fm10k_watchdog_host_not_ready (struct fm10k_intfc*) ;
 scalar_t__ jiffies ;
 int set_bit (int ,int ) ;
 int stub1 (struct fm10k_hw*,int *) ;
 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static int fm10k_handle_resume(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 int err;




 if (!test_and_clear_bit(__FM10K_RESET_SUSPENDED, interface->state))
  dev_warn(&interface->pdev->dev,
    "Device was shut down as part of suspend... Attempting to recover\n");


 hw->mac.ops.rebind_hw_stats(hw, &interface->stats);

 err = fm10k_handle_reset(interface);
 if (err)
  return err;




 interface->host_ready = 0;
 fm10k_watchdog_host_not_ready(interface);


 interface->link_down_event = jiffies + (HZ);
 set_bit(__FM10K_LINK_DOWN, interface->state);


 fm10k_start_service_event(interface);


 fm10k_macvlan_schedule(interface);

 return 0;
}
