
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct atl2_hw {int dummy; } ;
struct atl2_adapter {struct atl2_hw hw; TYPE_2__* netdev; int reset_task; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int tx_carrier_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ATL2_READ_REG (struct atl2_hw*,int ) ;
 int ATL2_WRITE_FLUSH (struct atl2_hw*) ;
 int ATL2_WRITE_REG (struct atl2_hw*,int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_DIS_INT ;
 int ISR_DMAR_TO_RST ;
 int ISR_DMAW_TO_RST ;
 int ISR_MANUAL ;
 int ISR_PHY ;
 int ISR_PHY_LINKDOWN ;
 int ISR_RX_EVENT ;
 int ISR_TX_EVENT ;
 int REG_IMR ;
 int REG_ISR ;
 int atl2_check_for_link (struct atl2_adapter*) ;
 int atl2_clear_phy_int (struct atl2_adapter*) ;
 int atl2_intr_rx (struct atl2_adapter*) ;
 int atl2_intr_tx (struct atl2_adapter*) ;
 struct atl2_adapter* netdev_priv (void*) ;
 scalar_t__ netif_running (TYPE_2__*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t atl2_intr(int irq, void *data)
{
 struct atl2_adapter *adapter = netdev_priv(data);
 struct atl2_hw *hw = &adapter->hw;
 u32 status;

 status = ATL2_READ_REG(hw, REG_ISR);
 if (0 == status)
  return IRQ_NONE;


 if (status & ISR_PHY)
  atl2_clear_phy_int(adapter);


 ATL2_WRITE_REG(hw, REG_ISR, status | ISR_DIS_INT);


 if (status & ISR_PHY_LINKDOWN) {
  if (netif_running(adapter->netdev)) {
   ATL2_WRITE_REG(hw, REG_ISR, 0);
   ATL2_WRITE_REG(hw, REG_IMR, 0);
   ATL2_WRITE_FLUSH(hw);
   schedule_work(&adapter->reset_task);
   return IRQ_HANDLED;
  }
 }


 if (status & (ISR_DMAR_TO_RST | ISR_DMAW_TO_RST)) {
  ATL2_WRITE_REG(hw, REG_ISR, 0);
  ATL2_WRITE_REG(hw, REG_IMR, 0);
  ATL2_WRITE_FLUSH(hw);
  schedule_work(&adapter->reset_task);
  return IRQ_HANDLED;
 }


 if (status & (ISR_PHY | ISR_MANUAL)) {
  adapter->netdev->stats.tx_carrier_errors++;
  atl2_check_for_link(adapter);
 }


 if (status & ISR_TX_EVENT)
  atl2_intr_tx(adapter);


 if (status & ISR_RX_EVENT)
  atl2_intr_rx(adapter);


 ATL2_WRITE_REG(&adapter->hw, REG_ISR, 0);
 return IRQ_HANDLED;
}
