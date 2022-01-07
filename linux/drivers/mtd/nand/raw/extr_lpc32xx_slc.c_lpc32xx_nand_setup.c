
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpc32xx_nand_host {int io_base; TYPE_1__* ncfg; int clk; } ;
struct TYPE_2__ {int rsetup; int rhold; int rwidth; int rdr_clks; int wsetup; int whold; int wwidth; int wdr_clks; } ;


 scalar_t__ LPC32XX_DEF_BUS_RATE ;
 scalar_t__ SLCCTRL_SW_RESET ;
 scalar_t__ SLCSTAT_INT_RDY_EN ;
 scalar_t__ SLCSTAT_INT_TC ;
 scalar_t__ SLCTAC_RDR (int ) ;
 scalar_t__ SLCTAC_RHOLD (scalar_t__,int ) ;
 scalar_t__ SLCTAC_RSETUP (scalar_t__,int ) ;
 scalar_t__ SLCTAC_RWIDTH (scalar_t__,int ) ;
 scalar_t__ SLCTAC_WDR (int ) ;
 scalar_t__ SLCTAC_WHOLD (scalar_t__,int ) ;
 scalar_t__ SLCTAC_WSETUP (scalar_t__,int ) ;
 scalar_t__ SLCTAC_WWIDTH (scalar_t__,int ) ;
 int SLC_CFG (int ) ;
 int SLC_CTRL (int ) ;
 int SLC_ICR (int ) ;
 int SLC_IEN (int ) ;
 int SLC_TAC (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int udelay (int) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static void lpc32xx_nand_setup(struct lpc32xx_nand_host *host)
{
 uint32_t clkrate, tmp;


 writel(SLCCTRL_SW_RESET, SLC_CTRL(host->io_base));
 udelay(1000);


 writel(0, SLC_CFG(host->io_base));
 writel(0, SLC_IEN(host->io_base));
 writel((SLCSTAT_INT_TC | SLCSTAT_INT_RDY_EN),
  SLC_ICR(host->io_base));


 clkrate = clk_get_rate(host->clk);
 if (clkrate == 0)
  clkrate = LPC32XX_DEF_BUS_RATE;


 tmp = SLCTAC_WDR(host->ncfg->wdr_clks) |
  SLCTAC_WWIDTH(clkrate, host->ncfg->wwidth) |
  SLCTAC_WHOLD(clkrate, host->ncfg->whold) |
  SLCTAC_WSETUP(clkrate, host->ncfg->wsetup) |
  SLCTAC_RDR(host->ncfg->rdr_clks) |
  SLCTAC_RWIDTH(clkrate, host->ncfg->rwidth) |
  SLCTAC_RHOLD(clkrate, host->ncfg->rhold) |
  SLCTAC_RSETUP(clkrate, host->ncfg->rsetup);
 writel(tmp, SLC_TAC(host->io_base));
}
