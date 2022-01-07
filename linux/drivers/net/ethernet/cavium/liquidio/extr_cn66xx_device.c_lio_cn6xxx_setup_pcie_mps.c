
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_device {int pcie_port; int pci_dev; } ;
typedef enum octeon_pcie_mps { ____Placeholder_octeon_pcie_mps } octeon_pcie_mps ;


 int CN6XXX_DPI_SLI_PRTX_CFG (int ) ;
 int CN6XXX_PCIE_DEVCTL ;
 int PCIE_MPS_DEFAULT ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

void lio_cn6xxx_setup_pcie_mps(struct octeon_device *oct,
          enum octeon_pcie_mps mps)
{
 u32 val;
 u64 r64;


 pci_read_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, &val);

 if (mps == PCIE_MPS_DEFAULT) {
  mps = ((val & (0x7 << 5)) >> 5);
 } else {
  val &= ~(0x7 << 5);
  val |= (mps << 5);
  pci_write_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, val);
 }


 r64 = lio_pci_readq(oct, CN6XXX_DPI_SLI_PRTX_CFG(oct->pcie_port));
 r64 |= (mps << 4);
 lio_pci_writeq(oct, r64, CN6XXX_DPI_SLI_PRTX_CFG(oct->pcie_port));
}
