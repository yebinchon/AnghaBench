
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_mmc_host {scalar_t__ version; scalar_t__ base; } ;


 scalar_t__ JZ_MMC_JZ4725B ;
 scalar_t__ JZ_REG_MMC_IMASK ;
 void writel (int ,scalar_t__) ;
 void writew (int ,scalar_t__) ;

__attribute__((used)) static void jz4740_mmc_write_irq_mask(struct jz4740_mmc_host *host,
          uint32_t val)
{
 if (host->version >= JZ_MMC_JZ4725B)
  return writel(val, host->base + JZ_REG_MMC_IMASK);
 else
  return writew(val, host->base + JZ_REG_MMC_IMASK);
}
