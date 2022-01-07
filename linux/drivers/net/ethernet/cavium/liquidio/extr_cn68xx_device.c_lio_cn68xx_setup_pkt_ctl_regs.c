
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_device {scalar_t__ chip; } ;
struct octeon_cn6xxx {int conf; } ;


 scalar_t__ CFG_GET_IS_SLI_BP_ON (int ) ;
 int CFG_GET_OQ_MAX_Q (int ) ;
 int CHIP_CONF (struct octeon_device*,int ) ;
 int CN68XX_SLI_TX_PIPE ;
 int CN6XXX_SLI_PKT_CTL ;
 int cn6xxx ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void lio_cn68xx_setup_pkt_ctl_regs(struct octeon_device *oct)
{
 struct octeon_cn6xxx *cn68xx = (struct octeon_cn6xxx *)oct->chip;
 u64 pktctl, tx_pipe, max_oqs;

 pktctl = octeon_read_csr64(oct, CN6XXX_SLI_PKT_CTL);


 max_oqs = CFG_GET_OQ_MAX_Q(CHIP_CONF(oct, cn6xxx));
 tx_pipe = octeon_read_csr64(oct, CN68XX_SLI_TX_PIPE);
 tx_pipe &= 0xffffffffff00ffffULL;
 tx_pipe |= max_oqs << 16;
 octeon_write_csr64(oct, CN68XX_SLI_TX_PIPE, tx_pipe);

 if (CFG_GET_IS_SLI_BP_ON(cn68xx->conf))
  pktctl |= 0xF;
 else

  pktctl &= ~0xF;
 octeon_write_csr64(oct, CN6XXX_SLI_PKT_CTL, pktctl);
}
