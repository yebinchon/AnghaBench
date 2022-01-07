
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_ring {int state; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_tx_queues; int state; int flags2; struct ixgbe_ring** tx_ring; struct ixgbe_hw hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IXGBE_EICR ;
 int IXGBE_EICR_ECC ;
 int IXGBE_EICR_FLOW_DIR ;
 int IXGBE_EICR_GPI_SDP0_X540 ;
 int IXGBE_EICR_LSC ;
 int IXGBE_EICR_MAILBOX ;
 int IXGBE_EICR_TIMESYNC ;
 int IXGBE_EICS ;
 int IXGBE_EIMC ;
 int IXGBE_EIMC_FLOW_DIR ;
 int IXGBE_FLAG2_FDIR_REQUIRES_REINIT ;
 int IXGBE_FLAG2_PHY_INTERRUPT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int __IXGBE_RESET_REQUESTED ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 int e_info (int ,char*) ;
 int ixgbe_check_fan_failure (struct ixgbe_adapter*,int) ;
 int ixgbe_check_lsc (struct ixgbe_adapter*) ;
 int ixgbe_check_overtemp_event (struct ixgbe_adapter*,int) ;
 int ixgbe_check_sfp_event (struct ixgbe_adapter*,int) ;
 int ixgbe_irq_enable (struct ixgbe_adapter*,int,int) ;





 int ixgbe_msg_task (struct ixgbe_adapter*) ;
 int ixgbe_phy_x550em_ext_t ;
 int ixgbe_ptp_check_pps_event (struct ixgbe_adapter*) ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int link ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ixgbe_msix_other(int irq, void *data)
{
 struct ixgbe_adapter *adapter = data;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eicr;







 eicr = IXGBE_READ_REG(hw, IXGBE_EICS);
 eicr &= 0xFFFF0000;

 IXGBE_WRITE_REG(hw, IXGBE_EICR, eicr);

 if (eicr & IXGBE_EICR_LSC)
  ixgbe_check_lsc(adapter);

 if (eicr & IXGBE_EICR_MAILBOX)
  ixgbe_msg_task(adapter);

 switch (hw->mac.type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (hw->phy.type == ixgbe_phy_x550em_ext_t &&
      (eicr & IXGBE_EICR_GPI_SDP0_X540)) {
   adapter->flags2 |= IXGBE_FLAG2_PHY_INTERRUPT;
   ixgbe_service_event_schedule(adapter);
   IXGBE_WRITE_REG(hw, IXGBE_EICR,
     IXGBE_EICR_GPI_SDP0_X540);
  }
  if (eicr & IXGBE_EICR_ECC) {
   e_info(link, "Received ECC Err, initiating reset\n");
   set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
   ixgbe_service_event_schedule(adapter);
   IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_ECC);
  }

  if (eicr & IXGBE_EICR_FLOW_DIR) {
   int reinit_count = 0;
   int i;
   for (i = 0; i < adapter->num_tx_queues; i++) {
    struct ixgbe_ring *ring = adapter->tx_ring[i];
    if (test_and_clear_bit(__IXGBE_TX_FDIR_INIT_DONE,
             &ring->state))
     reinit_count++;
   }
   if (reinit_count) {

    IXGBE_WRITE_REG(hw, IXGBE_EIMC, IXGBE_EIMC_FLOW_DIR);
    adapter->flags2 |= IXGBE_FLAG2_FDIR_REQUIRES_REINIT;
    ixgbe_service_event_schedule(adapter);
   }
  }
  ixgbe_check_sfp_event(adapter, eicr);
  ixgbe_check_overtemp_event(adapter, eicr);
  break;
 default:
  break;
 }

 ixgbe_check_fan_failure(adapter, eicr);

 if (unlikely(eicr & IXGBE_EICR_TIMESYNC))
  ixgbe_ptp_check_pps_event(adapter);


 if (!test_bit(__IXGBE_DOWN, &adapter->state))
  ixgbe_irq_enable(adapter, 0, 0);

 return IRQ_HANDLED;
}
