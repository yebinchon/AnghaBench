
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int pcie_port; } ;


 int CN23XX_PEM_BAR1_INDEX_REG (int ,int ) ;
 int lio_pci_writeq (struct octeon_device*,int ,int ) ;

__attribute__((used)) static void cn23xx_bar1_idx_write(struct octeon_device *oct, u32 idx, u32 mask)
{
 lio_pci_writeq(oct, mask,
         CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));
}
