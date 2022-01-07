
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hifmc_host {scalar_t__ regbase; } ;


 int CS_DESELECT_TIME ;
 int CS_HOLD_TIME ;
 int CS_SETUP_TIME ;
 scalar_t__ FMC_SPI_TIMING_CFG ;
 int TIMING_CFG_TCSH (int ) ;
 int TIMING_CFG_TCSS (int ) ;
 int TIMING_CFG_TSHSL (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_spi_nor_init(struct hifmc_host *host)
{
 u32 reg;

 reg = TIMING_CFG_TCSH(CS_HOLD_TIME)
  | TIMING_CFG_TCSS(CS_SETUP_TIME)
  | TIMING_CFG_TSHSL(CS_DESELECT_TIME);
 writel(reg, host->regbase + FMC_SPI_TIMING_CFG);
}
