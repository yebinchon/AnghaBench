
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int dummy; } ;


 int CLK_CTL_SCLKEN ;
 int CTL_SD_CARD_CLK_CTL ;
 int SH_MOBILE_SDHI_SCC_DTCNTL ;
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int renesas_sdhi_reset_scc (struct tmio_mmc_host*,struct renesas_sdhi*) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_scc_read32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,int) ;

__attribute__((used)) static void renesas_sdhi_disable_scc(struct tmio_mmc_host *host)
{
 struct renesas_sdhi *priv = host_to_priv(host);

 renesas_sdhi_reset_scc(host, priv);

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_DTCNTL,
         ~SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN &
         sd_scc_read32(host, priv,
         SH_MOBILE_SDHI_SCC_DTCNTL));

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));
}
