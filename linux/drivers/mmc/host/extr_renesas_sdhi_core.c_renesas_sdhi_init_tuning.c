
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int scc_tappos; } ;


 int CLK_CTL_SCLKEN ;
 int CTL_SD_CARD_CLK_CTL ;
 int CTL_STATUS ;
 int SH_MOBILE_SDHI_SCC_CKSEL ;
 int SH_MOBILE_SDHI_SCC_CKSEL_DTSEL ;
 int SH_MOBILE_SDHI_SCC_DT2FF ;
 int SH_MOBILE_SDHI_SCC_DTCNTL ;
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN ;
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK ;
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_ctrl_write32_as_16_and_16 (struct tmio_mmc_host*,int ,int) ;
 int sd_scc_read32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,int) ;

__attribute__((used)) static unsigned int renesas_sdhi_init_tuning(struct tmio_mmc_host *host)
{
 struct renesas_sdhi *priv;

 priv = host_to_priv(host);


 sd_ctrl_write32_as_16_and_16(host, CTL_STATUS, 0x0);

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));


 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_DTCNTL,
         SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN |
         0x8 << SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT);

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_CKSEL,
         SH_MOBILE_SDHI_SCC_CKSEL_DTSEL |
         sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_CKSEL));

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL,
         ~SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN &
         sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL));

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_DT2FF, priv->scc_tappos);

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));


 return (sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_DTCNTL) >>
  SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT) &
  SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK;
}
