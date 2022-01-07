
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int pcie_port; scalar_t__ chip; } ;
struct octeon_cn6xxx {int conf; } ;


 scalar_t__ CFG_GET_IS_SLI_BP_ON (int ) ;
 scalar_t__ CFG_GET_OQ_INTR_PKT (int ) ;
 scalar_t__ CFG_GET_OQ_INTR_TIME (int ) ;
 int CN6XXX_SLI_OQ_INT_LEVEL_PKTS ;
 int CN6XXX_SLI_OQ_INT_LEVEL_TIME ;
 int CN6XXX_SLI_OQ_WMARK ;
 int CN6XXX_SLI_PKT_DATA_OUT_ES64 ;
 int CN6XXX_SLI_PKT_DATA_OUT_NS ;
 int CN6XXX_SLI_PKT_DATA_OUT_ROR ;
 int CN6XXX_SLI_PKT_DPADDR ;
 int CN6XXX_SLI_PKT_OUT_BMODE ;
 int CN6XXX_SLI_PKT_PCIE_PORT64 ;
 int CN6XXX_SLI_PKT_SLIST_ES64 ;
 int CN6XXX_SLI_PKT_SLIST_NS ;
 int CN6XXX_SLI_PKT_SLIST_ROR ;
 int lio_cn6xxx_get_oq_ticks (struct octeon_device*,int) ;
 int octeon_write_csr (struct octeon_device*,int ,int) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

void lio_cn6xxx_setup_global_output_regs(struct octeon_device *oct)
{
 u32 time_threshold;
 struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;


 octeon_write_csr64(oct, CN6XXX_SLI_PKT_PCIE_PORT64,
      (oct->pcie_port * 0x5555555555555555ULL));

 if (CFG_GET_IS_SLI_BP_ON(cn6xxx->conf)) {
  octeon_write_csr64(oct, CN6XXX_SLI_OQ_WMARK, 32);
 } else {

  octeon_write_csr64(oct, CN6XXX_SLI_OQ_WMARK, 0);
 }


 octeon_write_csr(oct, CN6XXX_SLI_PKT_OUT_BMODE, 0);




 octeon_write_csr(oct, CN6XXX_SLI_PKT_DPADDR, 0xFFFFFFFF);




 octeon_write_csr(oct, CN6XXX_SLI_PKT_SLIST_ROR, 0);
 octeon_write_csr(oct, CN6XXX_SLI_PKT_SLIST_NS, 0);






 octeon_write_csr64(oct, CN6XXX_SLI_PKT_SLIST_ES64, 0ULL);



 octeon_write_csr(oct, CN6XXX_SLI_PKT_DATA_OUT_ROR, 0);
 octeon_write_csr(oct, CN6XXX_SLI_PKT_DATA_OUT_NS, 0);
 octeon_write_csr64(oct, CN6XXX_SLI_PKT_DATA_OUT_ES64,
      0x5555555555555555ULL);


 octeon_write_csr(oct, CN6XXX_SLI_OQ_INT_LEVEL_PKTS,
    (u32)CFG_GET_OQ_INTR_PKT(cn6xxx->conf));
 time_threshold =
  lio_cn6xxx_get_oq_ticks(oct, (u32)
     CFG_GET_OQ_INTR_TIME(cn6xxx->conf));

 octeon_write_csr(oct, CN6XXX_SLI_OQ_INT_LEVEL_TIME, time_threshold);
}
