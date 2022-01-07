
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmt_mci_priv {int clk_sdmmc; scalar_t__ sdmmc_base; } ;
struct mmc_host {int dummy; } ;


 int BLKL_GPI_CD ;
 int BLKL_INT_ENABLE ;
 int BM_SOFT_RESET ;
 int CTLR_FIFO_RESET ;
 int INT0_CD_INT_EN ;
 int INT0_DI_INT_EN ;
 int INT1_CMD_RES_TOUT_INT_EN ;
 int INT1_CMD_RES_TRAN_DONE_INT_EN ;
 int INT1_DATA_TOUT_INT_EN ;
 scalar_t__ SDMMC_BLKLEN ;
 scalar_t__ SDMMC_BUSMODE ;
 scalar_t__ SDMMC_CTLR ;
 scalar_t__ SDMMC_DMATIMEOUT ;
 scalar_t__ SDMMC_INTMASK0 ;
 scalar_t__ SDMMC_INTMASK1 ;
 scalar_t__ SDMMC_STS0 ;
 scalar_t__ SDMMC_STS1 ;
 scalar_t__ SDMMC_STS2 ;
 int STS2_DIS_FORCECLK ;
 int clk_set_rate (int ,int) ;
 struct wmt_mci_priv* mmc_priv (struct mmc_host*) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void wmt_reset_hardware(struct mmc_host *mmc)
{
 struct wmt_mci_priv *priv;
 u32 reg_tmp;

 priv = mmc_priv(mmc);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_BUSMODE);
 writeb(reg_tmp | BM_SOFT_RESET, priv->sdmmc_base + SDMMC_BUSMODE);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_CTLR);
 writeb(reg_tmp | CTLR_FIFO_RESET, priv->sdmmc_base + SDMMC_CTLR);


 writew(BLKL_INT_ENABLE | BLKL_GPI_CD, priv->sdmmc_base + SDMMC_BLKLEN);


 writeb(0xFF, priv->sdmmc_base + SDMMC_STS0);
 writeb(0xFF, priv->sdmmc_base + SDMMC_STS1);


 writeb(INT0_CD_INT_EN | INT0_DI_INT_EN, priv->sdmmc_base +
        SDMMC_INTMASK0);
 writeb(INT1_DATA_TOUT_INT_EN | INT1_CMD_RES_TRAN_DONE_INT_EN |
        INT1_CMD_RES_TOUT_INT_EN, priv->sdmmc_base + SDMMC_INTMASK1);


 writew(8191, priv->sdmmc_base + SDMMC_DMATIMEOUT);


 reg_tmp = readb(priv->sdmmc_base + SDMMC_STS2);
 writeb(reg_tmp | STS2_DIS_FORCECLK, priv->sdmmc_base + SDMMC_STS2);


 clk_set_rate(priv->clk_sdmmc, 400000);
}
