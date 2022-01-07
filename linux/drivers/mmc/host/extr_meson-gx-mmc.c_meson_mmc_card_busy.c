
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct meson_host {scalar_t__ regs; } ;


 int FIELD_GET (int ,int ) ;
 scalar_t__ SD_EMMC_STATUS ;
 int STATUS_DATI ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int meson_mmc_card_busy(struct mmc_host *mmc)
{
 struct meson_host *host = mmc_priv(mmc);
 u32 regval;

 regval = readl(host->regs + SD_EMMC_STATUS);


 return !(FIELD_GET(STATUS_DATI, regval) & 0xf);
}
