
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int pcie_port; } ;


 int CN6XXX_INPUT_CTL_MASK ;
 int CN6XXX_SLI_IN_PCIE_PORT ;
 int CN6XXX_SLI_PKT_INPUT_CONTROL ;
 int CN6XXX_SLI_PKT_INSTR_RD_SIZE ;
 int octeon_write_csr (struct octeon_device*,int ,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

void lio_cn6xxx_setup_global_input_regs(struct octeon_device *oct)
{

 octeon_write_csr(oct, CN6XXX_SLI_PKT_INPUT_CONTROL,
    CN6XXX_INPUT_CTL_MASK);


 octeon_write_csr64(oct, CN6XXX_SLI_PKT_INSTR_RD_SIZE,
      0xFFFFFFFFFFFFFFFFULL);


 octeon_write_csr64(oct, CN6XXX_SLI_IN_PCIE_PORT,
      (oct->pcie_port * 0x5555555555555555ULL));
}
