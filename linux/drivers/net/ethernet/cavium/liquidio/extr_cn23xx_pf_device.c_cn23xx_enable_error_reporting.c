
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct octeon_device {TYPE_1__* pci_dev; int octeon_id; } ;
struct TYPE_3__ {int dev; } ;


 int CN23XX_CONFIG_PCIE_CORRECT_ERR_STATUS ;
 int CN23XX_CONFIG_PCIE_DEVCTL ;
 int CN23XX_CONFIG_PCIE_DEVCTL_MASK ;
 int CN23XX_CONFIG_PCIE_UNCORRECT_ERR_MASK ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int,int,int) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

__attribute__((used)) static void cn23xx_enable_error_reporting(struct octeon_device *oct)
{
 u32 regval;
 u32 uncorrectable_err_mask, corrtable_err_status;

 pci_read_config_dword(oct->pci_dev, CN23XX_CONFIG_PCIE_DEVCTL, &regval);
 if (regval & CN23XX_CONFIG_PCIE_DEVCTL_MASK) {
  uncorrectable_err_mask = 0;
  corrtable_err_status = 0;
  pci_read_config_dword(oct->pci_dev,
          CN23XX_CONFIG_PCIE_UNCORRECT_ERR_MASK,
          &uncorrectable_err_mask);
  pci_read_config_dword(oct->pci_dev,
          CN23XX_CONFIG_PCIE_CORRECT_ERR_STATUS,
          &corrtable_err_status);
  dev_err(&oct->pci_dev->dev, "PCI-E Fatal error detected;\n"
     "\tdev_ctl_status_reg = 0x%08x\n"
     "\tuncorrectable_error_mask_reg = 0x%08x\n"
     "\tcorrectable_error_status_reg = 0x%08x\n",
       regval, uncorrectable_err_mask,
       corrtable_err_status);
 }

 regval |= 0xf;

 dev_dbg(&oct->pci_dev->dev, "OCTEON[%d]: Enabling PCI-E error reporting..\n",
  oct->octeon_id);
 pci_write_config_dword(oct->pci_dev, CN23XX_CONFIG_PCIE_DEVCTL, regval);
}
