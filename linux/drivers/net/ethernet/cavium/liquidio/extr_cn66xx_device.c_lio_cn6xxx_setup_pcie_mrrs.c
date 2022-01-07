
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_device {int pcie_port; int pci_dev; } ;
typedef enum octeon_pcie_mrrs { ____Placeholder_octeon_pcie_mrrs } octeon_pcie_mrrs ;


 int CN6XXX_DPI_SLI_PRTX_CFG (int ) ;
 int CN6XXX_PCIE_DEVCTL ;
 int CN6XXX_SLI_S2M_PORTX_CTL (int ) ;
 int PCIE_MRRS_DEFAULT ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

void lio_cn6xxx_setup_pcie_mrrs(struct octeon_device *oct,
    enum octeon_pcie_mrrs mrrs)
{
 u32 val;
 u64 r64;


 pci_read_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, &val);

 if (mrrs == PCIE_MRRS_DEFAULT) {
  mrrs = ((val & (0x7 << 12)) >> 12);
 } else {
  val &= ~(0x7 << 12);
  val |= (mrrs << 12);
  pci_write_config_dword(oct->pci_dev, CN6XXX_PCIE_DEVCTL, val);
 }


 r64 = octeon_read_csr64(oct, CN6XXX_SLI_S2M_PORTX_CTL(oct->pcie_port));
 r64 |= mrrs;
 octeon_write_csr64(oct, CN6XXX_SLI_S2M_PORTX_CTL(oct->pcie_port), r64);


 r64 = lio_pci_readq(oct, CN6XXX_DPI_SLI_PRTX_CFG(oct->pcie_port));
 r64 |= mrrs;
 lio_pci_writeq(oct, r64, CN6XXX_DPI_SLI_PRTX_CFG(oct->pcie_port));
}
