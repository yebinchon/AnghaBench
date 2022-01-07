
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbevf_q_vector {TYPE_2__ tx; TYPE_1__ rx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_tx_queues; int num_xdp_queues; int num_msix_vectors; struct ixgbevf_q_vector** q_vector; int * xdp_ring; int * tx_ring; int netdev; int state; struct ixgbe_hw hw; } ;


 int BIT (int) ;
 int IXGBE_VTEICS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int NON_Q_VECTORS ;
 int __IXGBEVF_DOWN ;
 int __IXGBEVF_RESETTING ;
 scalar_t__ netif_carrier_ok (int ) ;
 int set_check_for_tx_hang (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_check_hang_subtask(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eics = 0;
 int i;


 if (test_bit(__IXGBEVF_DOWN, &adapter->state) ||
     test_bit(__IXGBEVF_RESETTING, &adapter->state))
  return;


 if (netif_carrier_ok(adapter->netdev)) {
  for (i = 0; i < adapter->num_tx_queues; i++)
   set_check_for_tx_hang(adapter->tx_ring[i]);
  for (i = 0; i < adapter->num_xdp_queues; i++)
   set_check_for_tx_hang(adapter->xdp_ring[i]);
 }


 for (i = 0; i < adapter->num_msix_vectors - NON_Q_VECTORS; i++) {
  struct ixgbevf_q_vector *qv = adapter->q_vector[i];

  if (qv->rx.ring || qv->tx.ring)
   eics |= BIT(i);
 }


 IXGBE_WRITE_REG(hw, IXGBE_VTEICS, eics);
}
