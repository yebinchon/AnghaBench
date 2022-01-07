
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {int dev; } ;


 int CN6XXX_PCIE_DEVCTL ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

void lio_cn6xxx_enable_error_reporting(struct octeon_device *oct)
{
 u32 val;

 pci_read_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, &val);
 if (val & 0x000c0000) {
  dev_err(&oct->pci_dev->dev, "PCI-E Link error detected: 0x%08x\n",
   val & 0x000c0000);
 }

 val |= 0xf;

 dev_dbg(&oct->pci_dev->dev, "Enabling PCI-E error reporting..\n");
 pci_write_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, val);
}
