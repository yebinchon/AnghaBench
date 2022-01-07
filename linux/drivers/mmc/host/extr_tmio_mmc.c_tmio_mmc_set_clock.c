
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {int pdev; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int hclk; int (* set_clk_div ) (int ,int) ;} ;


 int CLK_CTL_DIV_MASK ;
 int CLK_CTL_SCLKEN ;
 int CTL_SD_CARD_CLK_CTL ;
 int roundup_pow_of_two (unsigned int) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int stub1 (int ,int) ;
 int tmio_mmc_clk_start (struct tmio_mmc_host*) ;
 int tmio_mmc_clk_stop (struct tmio_mmc_host*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tmio_mmc_set_clock(struct tmio_mmc_host *host,
          unsigned int new_clock)
{
 unsigned int divisor;
 u32 clk = 0;
 int clk_sel;

 if (new_clock == 0) {
  tmio_mmc_clk_stop(host);
  return;
 }

 divisor = host->pdata->hclk / new_clock;


 clk_sel = (divisor <= 1);
 clk = clk_sel ? 0 : (roundup_pow_of_two(divisor) >> 2);

 host->pdata->set_clk_div(host->pdev, clk_sel);

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
   sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));
 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, clk & CLK_CTL_DIV_MASK);
 usleep_range(10000, 11000);

 tmio_mmc_clk_start(host);
}
