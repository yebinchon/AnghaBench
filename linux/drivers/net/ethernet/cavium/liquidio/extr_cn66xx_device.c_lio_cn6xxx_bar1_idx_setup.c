
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_device {int pcie_port; } ;


 int CN6XXX_BAR1_REG (int ,int ) ;
 int PCI_BAR1_MASK ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;

void
lio_cn6xxx_bar1_idx_setup(struct octeon_device *oct,
     u64 core_addr,
     u32 idx,
     int valid)
{
 u64 bar1;

 if (valid == 0) {
  bar1 = lio_pci_readq(oct, CN6XXX_BAR1_REG(idx, oct->pcie_port));
  lio_pci_writeq(oct, (bar1 & 0xFFFFFFFEULL),
          CN6XXX_BAR1_REG(idx, oct->pcie_port));
  bar1 = lio_pci_readq(oct, CN6XXX_BAR1_REG(idx, oct->pcie_port));
  return;
 }




 lio_pci_writeq(oct, (((core_addr >> 22) << 4) | PCI_BAR1_MASK),
         CN6XXX_BAR1_REG(idx, oct->pcie_port));

 bar1 = lio_pci_readq(oct, CN6XXX_BAR1_REG(idx, oct->pcie_port));
}
