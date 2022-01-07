
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct atl1c_hw {int intr_mask; } ;
struct atl1c_adapter {struct atl1c_hw hw; int common_task; int work_event; int napi; struct pci_dev* pdev; } ;
typedef int irqreturn_t ;


 int ATL1C_WORK_EVENT_RESET ;
 int AT_MAX_INT_WORK ;
 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_DIS_INT ;
 int ISR_ERROR ;
 int ISR_GPHY ;
 int ISR_MANUAL ;
 int ISR_OVER ;
 int ISR_RX_PKT ;
 int ISR_TX_PKT ;
 int REG_IMR ;
 int REG_ISR ;
 int __napi_schedule (int *) ;
 int atl1c_clean_tx_irq (struct atl1c_adapter*,int ) ;
 int atl1c_clear_phy_int (struct atl1c_adapter*) ;
 int atl1c_link_chg_event (struct atl1c_adapter*) ;
 int atl1c_trans_normal ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_hw (struct atl1c_adapter*) ;
 scalar_t__ netif_msg_intr (struct atl1c_adapter*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t atl1c_intr(int irq, void *data)
{
 struct net_device *netdev = data;
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 struct atl1c_hw *hw = &adapter->hw;
 int max_ints = AT_MAX_INT_WORK;
 int handled = IRQ_NONE;
 u32 status;
 u32 reg_data;

 do {
  AT_READ_REG(hw, REG_ISR, &reg_data);
  status = reg_data & hw->intr_mask;

  if (status == 0 || (status & ISR_DIS_INT) != 0) {
   if (max_ints != AT_MAX_INT_WORK)
    handled = IRQ_HANDLED;
   break;
  }

  if (status & ISR_GPHY)
   atl1c_clear_phy_int(adapter);

  AT_WRITE_REG(hw, REG_ISR, status | ISR_DIS_INT);
  if (status & ISR_RX_PKT) {
   if (likely(napi_schedule_prep(&adapter->napi))) {
    hw->intr_mask &= ~ISR_RX_PKT;
    AT_WRITE_REG(hw, REG_IMR, hw->intr_mask);
    __napi_schedule(&adapter->napi);
   }
  }
  if (status & ISR_TX_PKT)
   atl1c_clean_tx_irq(adapter, atl1c_trans_normal);

  handled = IRQ_HANDLED;

  if (status & ISR_ERROR) {
   if (netif_msg_hw(adapter))
    dev_err(&pdev->dev,
     "atl1c hardware error (status = 0x%x)\n",
     status & ISR_ERROR);

   set_bit(ATL1C_WORK_EVENT_RESET, &adapter->work_event);
   schedule_work(&adapter->common_task);
   return IRQ_HANDLED;
  }

  if (status & ISR_OVER)
   if (netif_msg_intr(adapter))
    dev_warn(&pdev->dev,
     "TX/RX overflow (status = 0x%x)\n",
     status & ISR_OVER);


  if (status & (ISR_GPHY | ISR_MANUAL)) {
   netdev->stats.tx_carrier_errors++;
   atl1c_link_chg_event(adapter);
   break;
  }

 } while (--max_ints > 0);

 AT_WRITE_REG(&adapter->hw, REG_ISR, 0);
 return handled;
}
