
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmt_mci_priv {scalar_t__ sdmmc_base; } ;


 int CTLR_CMD_START ;
 scalar_t__ SDMMC_CTLR ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void wmt_mci_start_command(struct wmt_mci_priv *priv)
{
 u32 reg_tmp;

 reg_tmp = readb(priv->sdmmc_base + SDMMC_CTLR);
 writeb(reg_tmp | CTLR_CMD_START, priv->sdmmc_base + SDMMC_CTLR);
}
