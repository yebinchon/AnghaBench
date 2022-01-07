
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1e_hw {int max_frame_size; int smb_timer; int ict; int tx_count_down; int rx_count_down; int tpd_thresh; int rrd_thresh; int imt; } ;
struct atl1e_adapter {int netdev; struct atl1e_hw hw; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int AT_WRITE_REGW (struct atl1e_hw*,int ,int ) ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int ISR_PHY_LINKDOWN ;
 int MASTER_CTRL_ITIMER2_EN ;
 int MASTER_CTRL_ITIMER_EN ;
 int MASTER_CTRL_LED_MODE ;
 int REG_CMBDISDMA_TIMER ;
 int REG_IRQ_MODU_TIMER2_INIT ;
 int REG_IRQ_MODU_TIMER_INIT ;
 int REG_ISR ;
 int REG_MASTER_CTRL ;
 int REG_MTU ;
 int REG_SMB_STAT_TIMER ;
 int REG_TRIG_RRD_THRESH ;
 int REG_TRIG_RXTIMER ;
 int REG_TRIG_TPD_THRESH ;
 int REG_TRIG_TXTIMER ;
 int REG_WOL_CTRL ;
 int VLAN_HLEN ;
 int atl1e_configure_des_ring (struct atl1e_adapter*) ;
 int atl1e_configure_dma (struct atl1e_adapter*) ;
 int atl1e_configure_rx (struct atl1e_adapter*) ;
 int atl1e_configure_tx (struct atl1e_adapter*) ;
 int atl1e_hw_set_mac_addr (struct atl1e_hw*) ;
 int netdev_err (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1e_configure(struct atl1e_adapter *adapter)
{
 struct atl1e_hw *hw = &adapter->hw;

 u32 intr_status_data = 0;


 AT_WRITE_REG(hw, REG_ISR, ~0);


 atl1e_hw_set_mac_addr(hw);




 AT_WRITE_REG(hw, REG_WOL_CTRL, 0);




 atl1e_configure_des_ring(adapter);


 AT_WRITE_REGW(hw, REG_IRQ_MODU_TIMER_INIT, hw->imt);
 AT_WRITE_REGW(hw, REG_IRQ_MODU_TIMER2_INIT, hw->imt);
 AT_WRITE_REG(hw, REG_MASTER_CTRL, MASTER_CTRL_LED_MODE |
   MASTER_CTRL_ITIMER_EN | MASTER_CTRL_ITIMER2_EN);


 AT_WRITE_REGW(hw, REG_TRIG_RRD_THRESH, hw->rrd_thresh);
 AT_WRITE_REGW(hw, REG_TRIG_TPD_THRESH, hw->tpd_thresh);
 AT_WRITE_REGW(hw, REG_TRIG_RXTIMER, hw->rx_count_down);
 AT_WRITE_REGW(hw, REG_TRIG_TXTIMER, hw->tx_count_down);


 AT_WRITE_REGW(hw, REG_CMBDISDMA_TIMER, hw->ict);


 AT_WRITE_REG(hw, REG_MTU, hw->max_frame_size + ETH_HLEN +
   VLAN_HLEN + ETH_FCS_LEN);


 atl1e_configure_tx(adapter);


 atl1e_configure_rx(adapter);


 atl1e_configure_dma(adapter);


 AT_WRITE_REG(hw, REG_SMB_STAT_TIMER, hw->smb_timer);

 intr_status_data = AT_READ_REG(hw, REG_ISR);
 if (unlikely((intr_status_data & ISR_PHY_LINKDOWN) != 0)) {
  netdev_err(adapter->netdev,
      "atl1e_configure failed, PCIE phy link down\n");
  return -1;
 }

 AT_WRITE_REG(hw, REG_ISR, 0x7fffffff);
 return 0;
}
