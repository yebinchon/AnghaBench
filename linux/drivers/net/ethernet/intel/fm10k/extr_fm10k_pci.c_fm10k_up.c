
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* update_int_moderator ) (struct fm10k_hw*) ;int (* start_hw ) (struct fm10k_hw*) ;} ;
struct TYPE_4__ {int get_host_state; TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int service_timer; int netdev; int state; struct fm10k_hw hw; } ;


 int __FM10K_DOWN ;
 int __FM10K_UPDATING_STATS ;
 int clear_bit (int ,int ) ;
 int fm10k_configure_rx (struct fm10k_intfc*) ;
 int fm10k_configure_tx (struct fm10k_intfc*) ;
 int fm10k_napi_enable_all (struct fm10k_intfc*) ;
 int fm10k_restore_rx_state (struct fm10k_intfc*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int netif_tx_start_all_queues (int ) ;
 int stub1 (struct fm10k_hw*) ;
 int stub2 (struct fm10k_hw*) ;

void fm10k_up(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;


 hw->mac.ops.start_hw(hw);


 fm10k_configure_tx(interface);


 fm10k_configure_rx(interface);


 hw->mac.ops.update_int_moderator(hw);


 clear_bit(__FM10K_UPDATING_STATS, interface->state);


 clear_bit(__FM10K_DOWN, interface->state);


 fm10k_napi_enable_all(interface);


 fm10k_restore_rx_state(interface);


 netif_tx_start_all_queues(interface->netdev);


 hw->mac.get_host_state = 1;
 mod_timer(&interface->service_timer, jiffies);
}
