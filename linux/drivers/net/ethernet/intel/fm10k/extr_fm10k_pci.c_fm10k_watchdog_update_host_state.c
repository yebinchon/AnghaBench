
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* get_host_state ) (struct fm10k_hw*,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int host_ready; int flags; int last_reset; int state; int link_down_event; struct fm10k_hw hw; } ;
typedef scalar_t__ s32 ;


 int FM10K_FLAG_RESET_REQUESTED ;
 int FM10K_FLAG_SWPRI_CONFIG ;
 int __FM10K_LINK_DOWN ;
 int clear_bit (int ,int ) ;
 int fm10k_configure_swpri_map (struct fm10k_intfc*) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 scalar_t__ rtnl_trylock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int ) ;
 scalar_t__ stub1 (struct fm10k_hw*,int*) ;
 scalar_t__ test_bit (int ,int ) ;
 scalar_t__ time_is_after_jiffies (int ) ;
 scalar_t__ time_is_before_jiffies (int ) ;

__attribute__((used)) static void fm10k_watchdog_update_host_state(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 s32 err;

 if (test_bit(__FM10K_LINK_DOWN, interface->state)) {
  interface->host_ready = 0;
  if (time_is_after_jiffies(interface->link_down_event))
   return;
  clear_bit(__FM10K_LINK_DOWN, interface->state);
 }

 if (test_bit(FM10K_FLAG_SWPRI_CONFIG, interface->flags)) {
  if (rtnl_trylock()) {
   fm10k_configure_swpri_map(interface);
   rtnl_unlock();
  }
 }


 fm10k_mbx_lock(interface);

 err = hw->mac.ops.get_host_state(hw, &interface->host_ready);
 if (err && time_is_before_jiffies(interface->last_reset))
  set_bit(FM10K_FLAG_RESET_REQUESTED, interface->flags);


 fm10k_mbx_unlock(interface);
}
