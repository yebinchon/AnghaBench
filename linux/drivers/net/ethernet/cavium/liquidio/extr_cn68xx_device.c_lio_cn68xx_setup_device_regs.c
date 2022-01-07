
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 int CN6XXX_SLI_WINDOW_CTL ;
 int PCIE_MPS_DEFAULT ;
 int PCIE_MRRS_256B ;
 int lio_cn68xx_setup_pkt_ctl_regs (struct octeon_device*) ;
 int lio_cn6xxx_enable_error_reporting (struct octeon_device*) ;
 int lio_cn6xxx_setup_global_input_regs (struct octeon_device*) ;
 int lio_cn6xxx_setup_global_output_regs (struct octeon_device*) ;
 int lio_cn6xxx_setup_pcie_mps (struct octeon_device*,int ) ;
 int lio_cn6xxx_setup_pcie_mrrs (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static int lio_cn68xx_setup_device_regs(struct octeon_device *oct)
{
 lio_cn6xxx_setup_pcie_mps(oct, PCIE_MPS_DEFAULT);
 lio_cn6xxx_setup_pcie_mrrs(oct, PCIE_MRRS_256B);
 lio_cn6xxx_enable_error_reporting(oct);

 lio_cn6xxx_setup_global_input_regs(oct);
 lio_cn68xx_setup_pkt_ctl_regs(oct);
 lio_cn6xxx_setup_global_output_regs(oct);




 octeon_write_csr64(oct, CN6XXX_SLI_WINDOW_CTL, 0x200000ULL);

 return 0;
}
