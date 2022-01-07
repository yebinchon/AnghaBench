
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct atl2_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ATL2_READ_REG (struct atl2_hw*,int ) ;
 int ATL2_WRITE_REG (struct atl2_hw*,int ,int ) ;
 int CMD_BUS_MASTER ;
 int CMD_IO_SPACE ;
 int CMD_MEMORY_SPACE ;
 int MASTER_CTRL_SOFT_RST ;
 int PCI_REG_COMMAND ;
 int REG_IDLE_STATUS ;
 int REG_MASTER_CTRL ;
 int atl2_read_pci_cfg (struct atl2_hw*,int ,int*) ;
 int atl2_write_pci_cfg (struct atl2_hw*,int ,int*) ;
 int cpu_relax () ;
 int msleep (int) ;
 int wmb () ;

__attribute__((used)) static s32 atl2_reset_hw(struct atl2_hw *hw)
{
 u32 icr;
 u16 pci_cfg_cmd_word;
 int i;


 atl2_read_pci_cfg(hw, PCI_REG_COMMAND, &pci_cfg_cmd_word);
 if ((pci_cfg_cmd_word &
  (CMD_IO_SPACE|CMD_MEMORY_SPACE|CMD_BUS_MASTER)) !=
  (CMD_IO_SPACE|CMD_MEMORY_SPACE|CMD_BUS_MASTER)) {
  pci_cfg_cmd_word |=
   (CMD_IO_SPACE|CMD_MEMORY_SPACE|CMD_BUS_MASTER);
  atl2_write_pci_cfg(hw, PCI_REG_COMMAND, &pci_cfg_cmd_word);
 }
 ATL2_WRITE_REG(hw, REG_MASTER_CTRL, MASTER_CTRL_SOFT_RST);
 wmb();
 msleep(1);


 for (i = 0; i < 10; i++) {
  icr = ATL2_READ_REG(hw, REG_IDLE_STATUS);
  if (!icr)
   break;
  msleep(1);
  cpu_relax();
 }

 if (icr)
  return icr;

 return 0;
}
