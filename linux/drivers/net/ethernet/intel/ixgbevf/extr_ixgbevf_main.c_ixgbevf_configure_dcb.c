
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ timeout; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
struct ixgbevf_adapter {unsigned int num_rx_queues; unsigned int num_tx_queues; int state; TYPE_1__** tx_ring; int mbx_lock; struct ixgbe_hw hw; } ;
struct TYPE_3__ {unsigned int reg_idx; } ;


 int __IXGBEVF_QUEUE_RESET_REQUESTED ;
 int ixgbevf_get_queues (struct ixgbe_hw*,unsigned int*,unsigned int*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ixgbevf_configure_dcb(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 unsigned int def_q = 0;
 unsigned int num_tcs = 0;
 unsigned int num_rx_queues = adapter->num_rx_queues;
 unsigned int num_tx_queues = adapter->num_tx_queues;
 int err;

 spin_lock_bh(&adapter->mbx_lock);


 err = ixgbevf_get_queues(hw, &num_tcs, &def_q);

 spin_unlock_bh(&adapter->mbx_lock);

 if (err)
  return err;

 if (num_tcs > 1) {

  num_tx_queues = 1;


  adapter->tx_ring[0]->reg_idx = def_q;


  num_rx_queues = num_tcs;
 }


 if ((adapter->num_rx_queues != num_rx_queues) ||
     (adapter->num_tx_queues != num_tx_queues)) {

  hw->mbx.timeout = 0;


  set_bit(__IXGBEVF_QUEUE_RESET_REQUESTED, &adapter->state);
 }

 return 0;
}
