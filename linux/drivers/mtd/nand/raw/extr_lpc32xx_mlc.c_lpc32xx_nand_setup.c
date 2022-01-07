
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpc32xx_nand_host {int io_base; TYPE_1__* ncfg; int clk; } ;
struct TYPE_2__ {int tcea_delay; int busy_delay; int nand_ta; int rd_high; int rd_low; int wr_high; int wr_low; } ;


 int MLCCEH_NORMAL ;
 int MLCCMD_RESET ;
 int MLCICR_LARGEBLOCK ;
 int MLCICR_LONGADDR ;
 int MLCIRQ_CONTROLLER_READY ;
 int MLCIRQ_NAND_READY ;
 int MLCLOCKPR_MAGIC ;
 int MLCTIMEREG_BUSY_DELAY (int) ;
 int MLCTIMEREG_NAND_TA (int) ;
 int MLCTIMEREG_RD_HIGH (int) ;
 int MLCTIMEREG_RD_LOW (int) ;
 int MLCTIMEREG_TCEA_DELAY (int) ;
 int MLCTIMEREG_WR_HIGH (int) ;
 int MLCTIMEREG_WR_LOW (int) ;
 int MLC_CEH (int ) ;
 int MLC_CMD (int ) ;
 int MLC_ICR (int ) ;
 int MLC_IRQ_MR (int ) ;
 int MLC_LOCK_PR (int ) ;
 int MLC_TIME_REG (int ) ;
 int clk_get_rate (int ) ;
 int udelay (int) ;
 int writeb (int,int ) ;
 int writel (int,int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void lpc32xx_nand_setup(struct lpc32xx_nand_host *host)
{
 uint32_t clkrate, tmp;


 writel(MLCCMD_RESET, MLC_CMD(host->io_base));
 udelay(1000);


 clkrate = clk_get_rate(host->clk);
 if (clkrate == 0)
  clkrate = 104000000;



 writew(MLCLOCKPR_MAGIC, MLC_LOCK_PR(host->io_base));


 tmp = MLCICR_LARGEBLOCK | MLCICR_LONGADDR;
 writel(tmp, MLC_ICR(host->io_base));



 writew(MLCLOCKPR_MAGIC, MLC_LOCK_PR(host->io_base));


 tmp = 0;
 tmp |= MLCTIMEREG_TCEA_DELAY(clkrate / host->ncfg->tcea_delay + 1);
 tmp |= MLCTIMEREG_BUSY_DELAY(clkrate / host->ncfg->busy_delay + 1);
 tmp |= MLCTIMEREG_NAND_TA(clkrate / host->ncfg->nand_ta + 1);
 tmp |= MLCTIMEREG_RD_HIGH(clkrate / host->ncfg->rd_high + 1);
 tmp |= MLCTIMEREG_RD_LOW(clkrate / host->ncfg->rd_low);
 tmp |= MLCTIMEREG_WR_HIGH(clkrate / host->ncfg->wr_high + 1);
 tmp |= MLCTIMEREG_WR_LOW(clkrate / host->ncfg->wr_low);
 writel(tmp, MLC_TIME_REG(host->io_base));


 writeb(MLCIRQ_CONTROLLER_READY | MLCIRQ_NAND_READY,
   MLC_IRQ_MR(host->io_base));


 writel(MLCCEH_NORMAL, MLC_CEH(host->io_base));
}
