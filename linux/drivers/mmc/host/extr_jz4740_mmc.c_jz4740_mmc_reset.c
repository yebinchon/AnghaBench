
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_mmc_host {scalar_t__ base; } ;


 int JZ_MMC_STATUS_IS_RESETTING ;
 int JZ_MMC_STRPCL_RESET ;
 scalar_t__ JZ_REG_MMC_STATUS ;
 scalar_t__ JZ_REG_MMC_STRPCL ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void jz4740_mmc_reset(struct jz4740_mmc_host *host)
{
 uint32_t status;
 unsigned int timeout = 1000;

 writew(JZ_MMC_STRPCL_RESET, host->base + JZ_REG_MMC_STRPCL);
 udelay(10);
 do {
  status = readl(host->base + JZ_REG_MMC_STATUS);
 } while (status & JZ_MMC_STATUS_IS_RESETTING && --timeout);
}
