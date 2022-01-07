
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int scc_tappos; } ;


 int CLK_CTL_SCLKEN ;
 int CTL_SDIF_MODE ;
 int CTL_SD_CARD_CLK_CTL ;
 int SH_MOBILE_SDHI_SCC_DT2FF ;
 int SH_MOBILE_SDHI_SCC_TMPPORT2 ;
 int SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN ;
 int SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int sd_scc_read32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,int) ;

__attribute__((used)) static void renesas_sdhi_reset_hs400_mode(struct tmio_mmc_host *host,
       struct renesas_sdhi *priv)
{
 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));


 sd_ctrl_write16(host, CTL_SDIF_MODE, ~0x0001 &
   sd_ctrl_read16(host, CTL_SDIF_MODE));

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_DT2FF, priv->scc_tappos);

 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_TMPPORT2,
         ~(SH_MOBILE_SDHI_SCC_TMPPORT2_HS400EN |
    SH_MOBILE_SDHI_SCC_TMPPORT2_HS400OSEL) &
   sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_TMPPORT2));

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));
}
