
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int pci_dev; } ;


 int CN6XXX_PCIE_FLTMSK ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static inline void lio_cn68xx_vendor_message_fix(struct octeon_device *oct)
{
 u32 val = 0;


 pci_read_config_dword(oct->pci_dev, CN6XXX_PCIE_FLTMSK, &val);
 val |= 0x3;
 pci_write_config_dword(oct->pci_dev, CN6XXX_PCIE_FLTMSK, val);
}
