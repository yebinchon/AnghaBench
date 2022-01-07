
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct atl1c_hw {int nic_type; struct atl1c_adapter* adapter; } ;
struct atl1c_adapter {struct pci_dev* pdev; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_FLUSH (struct atl1c_hw*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int IDLE_STATUS_MASK ;
 int MAC_CTRL_SPEED_MODE_SW ;
 int MASTER_CTRL_OOB_DIS ;
 int MASTER_CTRL_SOFT_RST ;
 int REG_MAC_CTRL ;
 int REG_MASTER_CTRL ;
 int REG_SERDES ;
 int SERDES_MAC_CLK_SLOWDOWN ;
 int SERDES_PHY_CLK_SLOWDOWN ;



 int atl1c_stop_mac (struct atl1c_hw*) ;
 scalar_t__ atl1c_wait_until_idle (struct atl1c_hw*,int ) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;

__attribute__((used)) static int atl1c_reset_mac(struct atl1c_hw *hw)
{
 struct atl1c_adapter *adapter = hw->adapter;
 struct pci_dev *pdev = adapter->pdev;
 u32 ctrl_data = 0;

 atl1c_stop_mac(hw);






 AT_READ_REG(hw, REG_MASTER_CTRL, &ctrl_data);
 ctrl_data |= MASTER_CTRL_OOB_DIS;
 AT_WRITE_REG(hw, REG_MASTER_CTRL, ctrl_data | MASTER_CTRL_SOFT_RST);

 AT_WRITE_FLUSH(hw);
 msleep(10);


 if (atl1c_wait_until_idle(hw, IDLE_STATUS_MASK)) {
  dev_err(&pdev->dev,
   "MAC state machine can't be idle since"
   " disabled for 10ms second\n");
  return -1;
 }
 AT_WRITE_REG(hw, REG_MASTER_CTRL, ctrl_data);


 AT_READ_REG(hw, REG_MAC_CTRL, &ctrl_data);
 AT_WRITE_REG(hw, REG_MAC_CTRL, ctrl_data | MAC_CTRL_SPEED_MODE_SW);


 AT_READ_REG(hw, REG_SERDES, &ctrl_data);
 switch (hw->nic_type) {
 case 129:
  ctrl_data &= ~(SERDES_PHY_CLK_SLOWDOWN |
    SERDES_MAC_CLK_SLOWDOWN);
  AT_WRITE_REG(hw, REG_SERDES, ctrl_data);
  break;
 case 128:
 case 130:
  ctrl_data |= SERDES_PHY_CLK_SLOWDOWN | SERDES_MAC_CLK_SLOWDOWN;
  AT_WRITE_REG(hw, REG_SERDES, ctrl_data);
  break;
 default:
  break;
 }

 return 0;
}
