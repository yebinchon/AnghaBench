
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_device {int pcie_port; } ;


 int CN23XX_PEM_BAR1_INDEX_REG (int ,int ) ;
 int PCI_BAR1_MASK ;
 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int) ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;

__attribute__((used)) static void cn23xx_bar1_idx_setup(struct octeon_device *oct, u64 core_addr,
      u32 idx, int valid)
{
 u64 bar1;
 u64 reg_adr;

 if (!valid) {
  reg_adr = lio_pci_readq(
   oct, CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));
  WRITE_ONCE(bar1, reg_adr);
  lio_pci_writeq(oct, (READ_ONCE(bar1) & 0xFFFFFFFEULL),
          CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));
  reg_adr = lio_pci_readq(
   oct, CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));
  WRITE_ONCE(bar1, reg_adr);
  return;
 }




 lio_pci_writeq(oct, (((core_addr >> 22) << 4) | PCI_BAR1_MASK),
         CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));

 WRITE_ONCE(bar1, lio_pci_readq(
     oct, CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx)));
}
