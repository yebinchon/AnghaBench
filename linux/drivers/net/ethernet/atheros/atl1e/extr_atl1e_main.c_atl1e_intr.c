
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {struct atl1e_hw hw; int napi; int reset_task; int netdev; } ;
typedef int irqreturn_t ;


 int AT_MAX_INT_WORK ;
 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_FLUSH (struct atl1e_hw*) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int IMR_NORMAL_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_DIS_INT ;
 int ISR_DMAR_TO_RST ;
 int ISR_DMAW_TO_RST ;
 int ISR_GPHY ;
 int ISR_MANUAL ;
 int ISR_PHY_LINKDOWN ;
 int ISR_RX_EVENT ;
 int ISR_SMB ;
 int ISR_TX_EVENT ;
 int REG_IMR ;
 int REG_ISR ;
 int __napi_schedule (int *) ;
 int atl1e_clean_tx_irq (struct atl1e_adapter*) ;
 int atl1e_clear_phy_int (struct atl1e_adapter*) ;
 int atl1e_irq_reset (struct atl1e_adapter*) ;
 int atl1e_link_chg_event (struct atl1e_adapter*) ;
 int atl1e_update_hw_stats (struct atl1e_adapter*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 int netdev_err (int ,char*,int) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t atl1e_intr(int irq, void *data)
{
 struct net_device *netdev = data;
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 struct atl1e_hw *hw = &adapter->hw;
 int max_ints = AT_MAX_INT_WORK;
 int handled = IRQ_NONE;
 u32 status;

 do {
  status = AT_READ_REG(hw, REG_ISR);
  if ((status & IMR_NORMAL_MASK) == 0 ||
    (status & ISR_DIS_INT) != 0) {
   if (max_ints != AT_MAX_INT_WORK)
    handled = IRQ_HANDLED;
   break;
  }

  if (status & ISR_GPHY)
   atl1e_clear_phy_int(adapter);

  AT_WRITE_REG(hw, REG_ISR, status | ISR_DIS_INT);

  handled = IRQ_HANDLED;

  if (status & ISR_PHY_LINKDOWN) {
   netdev_err(adapter->netdev,
       "pcie phy linkdown %x\n", status);
   if (netif_running(adapter->netdev)) {

    atl1e_irq_reset(adapter);
    schedule_work(&adapter->reset_task);
    break;
   }
  }


  if (status & (ISR_DMAR_TO_RST | ISR_DMAW_TO_RST)) {
   netdev_err(adapter->netdev,
       "PCIE DMA RW error (status = 0x%x)\n",
       status);
   atl1e_irq_reset(adapter);
   schedule_work(&adapter->reset_task);
   break;
  }

  if (status & ISR_SMB)
   atl1e_update_hw_stats(adapter);


  if (status & (ISR_GPHY | ISR_MANUAL)) {
   netdev->stats.tx_carrier_errors++;
   atl1e_link_chg_event(adapter);
   break;
  }


  if (status & ISR_TX_EVENT)
   atl1e_clean_tx_irq(adapter);

  if (status & ISR_RX_EVENT) {




   AT_WRITE_REG(hw, REG_IMR,
         IMR_NORMAL_MASK & ~ISR_RX_EVENT);
   AT_WRITE_FLUSH(hw);
   if (likely(napi_schedule_prep(
       &adapter->napi)))
    __napi_schedule(&adapter->napi);
  }
 } while (--max_ints > 0);

 AT_WRITE_REG(&adapter->hw, REG_ISR, 0);

 return handled;
}
