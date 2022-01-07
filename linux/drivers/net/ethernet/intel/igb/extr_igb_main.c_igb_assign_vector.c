
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {TYPE_3__* ring; } ;
struct TYPE_7__ {TYPE_1__* ring; } ;
struct igb_q_vector {int eims_value; int set_itr; TYPE_4__ tx; TYPE_2__ rx; struct igb_adapter* adapter; } ;
struct TYPE_10__ {int type; } ;
struct e1000_hw {TYPE_5__ mac; } ;
struct igb_adapter {int flags; int eims_enable_mask; struct e1000_hw hw; } ;
struct TYPE_8__ {int reg_idx; } ;
struct TYPE_6__ {int reg_idx; } ;


 void* BIT (int) ;
 int BUG () ;
 int E1000_EICR_RX_QUEUE0 ;
 int E1000_EICR_TX_QUEUE0 ;
 int E1000_EIMS_OTHER ;
 int E1000_MSIXBM (int ) ;
 int IGB_FLAG_HAS_MSIX ;
 int IGB_N0_QUEUE ;
 int array_wr32 (int ,int,int) ;







 int igb_write_ivar (struct e1000_hw*,int,int,int) ;

__attribute__((used)) static void igb_assign_vector(struct igb_q_vector *q_vector, int msix_vector)
{
 struct igb_adapter *adapter = q_vector->adapter;
 struct e1000_hw *hw = &adapter->hw;
 int rx_queue = IGB_N0_QUEUE;
 int tx_queue = IGB_N0_QUEUE;
 u32 msixbm = 0;

 if (q_vector->rx.ring)
  rx_queue = q_vector->rx.ring->reg_idx;
 if (q_vector->tx.ring)
  tx_queue = q_vector->tx.ring->reg_idx;

 switch (hw->mac.type) {
 case 134:





  if (rx_queue > IGB_N0_QUEUE)
   msixbm = E1000_EICR_RX_QUEUE0 << rx_queue;
  if (tx_queue > IGB_N0_QUEUE)
   msixbm |= E1000_EICR_TX_QUEUE0 << tx_queue;
  if (!(adapter->flags & IGB_FLAG_HAS_MSIX) && msix_vector == 0)
   msixbm |= E1000_EIMS_OTHER;
  array_wr32(E1000_MSIXBM(0), msix_vector, msixbm);
  q_vector->eims_value = msixbm;
  break;
 case 133:





  if (rx_queue > IGB_N0_QUEUE)
   igb_write_ivar(hw, msix_vector,
           rx_queue & 0x7,
           (rx_queue & 0x8) << 1);
  if (tx_queue > IGB_N0_QUEUE)
   igb_write_ivar(hw, msix_vector,
           tx_queue & 0x7,
           ((tx_queue & 0x8) << 1) + 8);
  q_vector->eims_value = BIT(msix_vector);
  break;
 case 132:
 case 129:
 case 128:
 case 131:
 case 130:






  if (rx_queue > IGB_N0_QUEUE)
   igb_write_ivar(hw, msix_vector,
           rx_queue >> 1,
           (rx_queue & 0x1) << 4);
  if (tx_queue > IGB_N0_QUEUE)
   igb_write_ivar(hw, msix_vector,
           tx_queue >> 1,
           ((tx_queue & 0x1) << 4) + 8);
  q_vector->eims_value = BIT(msix_vector);
  break;
 default:
  BUG();
  break;
 }


 adapter->eims_enable_mask |= q_vector->eims_value;


 q_vector->set_itr = 1;
}
