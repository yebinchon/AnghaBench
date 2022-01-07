
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct atl1e_hw {struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {int netdev; struct pci_dev* pdev; } ;


 int AT_ERR_TIMEOUT ;
 int AT_HW_MAX_IDLE_DELAY ;
 scalar_t__ AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int CMD_BUS_MASTER ;
 int CMD_IO_SPACE ;
 int CMD_MEMORY_SPACE ;
 int MASTER_CTRL_LED_MODE ;
 int MASTER_CTRL_SOFT_RST ;
 int PCI_REG_COMMAND ;
 int REG_IDLE_STATUS ;
 int REG_MASTER_CTRL ;
 int cpu_relax () ;
 int msleep (int) ;
 int netdev_err (int ,char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int wmb () ;

int atl1e_reset_hw(struct atl1e_hw *hw)
{
 struct atl1e_adapter *adapter = hw->adapter;
 struct pci_dev *pdev = adapter->pdev;

 u32 idle_status_data = 0;
 u16 pci_cfg_cmd_word = 0;
 int timeout = 0;


 pci_read_config_word(pdev, PCI_REG_COMMAND, &pci_cfg_cmd_word);
 if ((pci_cfg_cmd_word & (CMD_IO_SPACE |
    CMD_MEMORY_SPACE | CMD_BUS_MASTER))
   != (CMD_IO_SPACE | CMD_MEMORY_SPACE | CMD_BUS_MASTER)) {
  pci_cfg_cmd_word |= (CMD_IO_SPACE |
         CMD_MEMORY_SPACE | CMD_BUS_MASTER);
  pci_write_config_word(pdev, PCI_REG_COMMAND, pci_cfg_cmd_word);
 }







 AT_WRITE_REG(hw, REG_MASTER_CTRL,
   MASTER_CTRL_LED_MODE | MASTER_CTRL_SOFT_RST);
 wmb();
 msleep(1);


 for (timeout = 0; timeout < AT_HW_MAX_IDLE_DELAY; timeout++) {
  idle_status_data = AT_READ_REG(hw, REG_IDLE_STATUS);
  if (idle_status_data == 0)
   break;
  msleep(1);
  cpu_relax();
 }

 if (timeout >= AT_HW_MAX_IDLE_DELAY) {
  netdev_err(adapter->netdev,
      "MAC state machine can't be idle since disabled for 10ms second\n");
  return AT_ERR_TIMEOUT;
 }

 return 0;
}
