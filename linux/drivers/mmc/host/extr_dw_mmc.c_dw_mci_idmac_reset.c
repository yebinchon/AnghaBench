
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mci {int dummy; } ;


 int BMOD ;
 int SDMMC_IDMAC_SWRESET ;
 int mci_readl (struct dw_mci*,int ) ;
 int mci_writel (struct dw_mci*,int ,int ) ;

__attribute__((used)) static void dw_mci_idmac_reset(struct dw_mci *host)
{
 u32 bmod = mci_readl(host, BMOD);

 bmod |= SDMMC_IDMAC_SWRESET;
 mci_writel(host, BMOD, bmod);
}
