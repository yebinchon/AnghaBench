
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_3__ {scalar_t__ (* init_hw ) (struct igc_hw*) ;int (* reset_hw ) (struct igc_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_fc_info {int high_water; int low_water; int pause_time; int send_xon; int requested_mode; int current_mode; } ;
struct igc_hw {TYPE_2__ mac; struct igc_fc_info fc; } ;
struct igc_adapter {int max_frame_size; int netdev; struct igc_hw hw; struct pci_dev* pdev; } ;


 int IGC_PBA_34K ;
 int MAX_JUMBO_FRAME_SIZE ;
 int dev_err (int *,char*) ;
 int igc_get_phy_info (struct igc_hw*) ;
 int igc_power_down_link (struct igc_adapter*) ;
 int netif_running (int ) ;
 int stub1 (struct igc_hw*) ;
 scalar_t__ stub2 (struct igc_hw*) ;

void igc_reset(struct igc_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct igc_hw *hw = &adapter->hw;
 struct igc_fc_info *fc = &hw->fc;
 u32 pba, hwm;


 pba = IGC_PBA_34K;
 hwm = (pba << 10) - (adapter->max_frame_size + MAX_JUMBO_FRAME_SIZE);

 fc->high_water = hwm & 0xFFFFFFF0;
 fc->low_water = fc->high_water - 16;
 fc->pause_time = 0xFFFF;
 fc->send_xon = 1;
 fc->current_mode = fc->requested_mode;

 hw->mac.ops.reset_hw(hw);

 if (hw->mac.ops.init_hw(hw))
  dev_err(&pdev->dev, "Hardware Error\n");

 if (!netif_running(adapter->netdev))
  igc_power_down_link(adapter);

 igc_get_phy_info(hw);
}
