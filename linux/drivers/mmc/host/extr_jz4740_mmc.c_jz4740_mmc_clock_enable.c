
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct jz4740_mmc_host {scalar_t__ base; } ;


 int JZ_MMC_STRPCL_CLOCK_START ;
 int JZ_MMC_STRPCL_START_OP ;
 scalar_t__ JZ_REG_MMC_STRPCL ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void jz4740_mmc_clock_enable(struct jz4740_mmc_host *host,
 bool start_transfer)
{
 uint16_t val = JZ_MMC_STRPCL_CLOCK_START;

 if (start_transfer)
  val |= JZ_MMC_STRPCL_START_OP;

 writew(val, host->base + JZ_REG_MMC_STRPCL);
}
