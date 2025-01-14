
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fjes_hw {TYPE_2__* ep_shm_info; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int recv_intr_rx; int recv_intr_stop; int recv_intr_unshare; int recv_intr_zoneupdate; } ;
struct TYPE_4__ {TYPE_1__ ep_stats; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_ICTL_MASK_DEV_STOP_REQ ;
 int REG_ICTL_MASK_INFO_UPDATE ;
 int REG_ICTL_MASK_RX_DATA ;
 int REG_ICTL_MASK_TXRX_STOP_DONE ;
 int REG_ICTL_MASK_TXRX_STOP_REQ ;
 int REG_IS_MASK_EPID ;
 int REG_IS_MASK_IS_ASSERT ;
 int fjes_hw_capture_interrupt_status (struct fjes_hw*) ;
 int fjes_hw_set_irqmask (struct fjes_hw*,int,int) ;
 int fjes_rx_irq (struct fjes_adapter*,int) ;
 int fjes_stop_req_irq (struct fjes_adapter*,int) ;
 int fjes_txrx_stop_req_irq (struct fjes_adapter*,int) ;
 int fjes_update_zone_irq (struct fjes_adapter*,int) ;

__attribute__((used)) static irqreturn_t fjes_intr(int irq, void *data)
{
 struct fjes_adapter *adapter = data;
 struct fjes_hw *hw = &adapter->hw;
 irqreturn_t ret;
 u32 icr;

 icr = fjes_hw_capture_interrupt_status(hw);

 if (icr & REG_IS_MASK_IS_ASSERT) {
  if (icr & REG_ICTL_MASK_RX_DATA) {
   fjes_rx_irq(adapter, icr & REG_IS_MASK_EPID);
   hw->ep_shm_info[icr & REG_IS_MASK_EPID].ep_stats
    .recv_intr_rx += 1;
  }

  if (icr & REG_ICTL_MASK_DEV_STOP_REQ) {
   fjes_stop_req_irq(adapter, icr & REG_IS_MASK_EPID);
   hw->ep_shm_info[icr & REG_IS_MASK_EPID].ep_stats
    .recv_intr_stop += 1;
  }

  if (icr & REG_ICTL_MASK_TXRX_STOP_REQ) {
   fjes_txrx_stop_req_irq(adapter, icr & REG_IS_MASK_EPID);
   hw->ep_shm_info[icr & REG_IS_MASK_EPID].ep_stats
    .recv_intr_unshare += 1;
  }

  if (icr & REG_ICTL_MASK_TXRX_STOP_DONE)
   fjes_hw_set_irqmask(hw,
         REG_ICTL_MASK_TXRX_STOP_DONE, 1);

  if (icr & REG_ICTL_MASK_INFO_UPDATE) {
   fjes_update_zone_irq(adapter, icr & REG_IS_MASK_EPID);
   hw->ep_shm_info[icr & REG_IS_MASK_EPID].ep_stats
    .recv_intr_zoneupdate += 1;
  }

  ret = IRQ_HANDLED;
 } else {
  ret = IRQ_NONE;
 }

 return ret;
}
