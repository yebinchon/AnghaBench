
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_device {scalar_t__ chip; } ;
struct octeon_cn6xxx {int conf; } ;


 scalar_t__ CFG_GET_IS_SLI_BP_ON (int ) ;
 int CFG_GET_OQ_MAX_Q (int ) ;
 int CN6XXX_SLI_PKT_CTL ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void lio_cn66xx_setup_pkt_ctl_regs(struct octeon_device *oct)
{
 u64 pktctl;

 struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;

 pktctl = octeon_read_csr64(oct, CN6XXX_SLI_PKT_CTL);


 if (CFG_GET_OQ_MAX_Q(cn6xxx->conf) <= 4)

  pktctl &= ~(1 << 4);
 else
  pktctl |= (1 << 4);

 if (CFG_GET_IS_SLI_BP_ON(cn6xxx->conf))
  pktctl |= 0xF;
 else

  pktctl &= ~0xF;
 octeon_write_csr64(oct, CN6XXX_SLI_PKT_CTL, pktctl);
}
