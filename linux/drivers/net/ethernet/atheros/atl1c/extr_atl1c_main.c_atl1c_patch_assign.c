
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct atl1c_hw {int msi_lnkpatch; scalar_t__ device_id; scalar_t__ revision_id; scalar_t__ subsystem_vendor_id; scalar_t__ subsystem_id; TYPE_1__* adapter; } ;
struct TYPE_4__ {scalar_t__ pci_did; scalar_t__ pci_revid; scalar_t__ subsystem_vid; scalar_t__ subsystem_did; int patch_flag; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;


 int ATL1C_LINK_PATCH ;
 scalar_t__ L2CB_V21 ;
 scalar_t__ PCI_DEVICE_ID_ATHEROS_L2C_B2 ;
 int REG_PCIE_DEV_MISC_CTRL ;
 int REG_PCIE_IND_ACC_ADDR ;
 int REG_PCIE_IND_ACC_DATA ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 TYPE_2__* plats ;

__attribute__((used)) static void atl1c_patch_assign(struct atl1c_hw *hw)
{
 struct pci_dev *pdev = hw->adapter->pdev;
 u32 misc_ctrl;
 int i = 0;

 hw->msi_lnkpatch = 0;

 while (plats[i].pci_did != 0) {
  if (plats[i].pci_did == hw->device_id &&
      plats[i].pci_revid == hw->revision_id &&
      plats[i].subsystem_vid == hw->subsystem_vendor_id &&
      plats[i].subsystem_did == hw->subsystem_id) {
   if (plats[i].patch_flag & ATL1C_LINK_PATCH)
    hw->msi_lnkpatch = 1;
  }
  i++;
 }

 if (hw->device_id == PCI_DEVICE_ID_ATHEROS_L2C_B2 &&
     hw->revision_id == L2CB_V21) {

  pci_write_config_dword(pdev, REG_PCIE_IND_ACC_ADDR,
           REG_PCIE_DEV_MISC_CTRL);
  pci_read_config_dword(pdev, REG_PCIE_IND_ACC_DATA, &misc_ctrl);
  misc_ctrl &= ~0x100;
  pci_write_config_dword(pdev, REG_PCIE_IND_ACC_ADDR,
           REG_PCIE_DEV_MISC_CTRL);
  pci_write_config_dword(pdev, REG_PCIE_IND_ACC_DATA, misc_ctrl);
 }
}
