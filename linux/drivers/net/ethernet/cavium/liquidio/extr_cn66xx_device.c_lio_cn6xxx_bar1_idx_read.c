
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int pcie_port; } ;


 int CN6XXX_BAR1_REG (int ,int ) ;
 int lio_pci_readq (struct octeon_device*,int ) ;

u32 lio_cn6xxx_bar1_idx_read(struct octeon_device *oct, u32 idx)
{
 return (u32)lio_pci_readq(oct, CN6XXX_BAR1_REG(idx, oct->pcie_port));
}
