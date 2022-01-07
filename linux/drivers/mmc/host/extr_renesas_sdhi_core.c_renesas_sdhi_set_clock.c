
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {TYPE_3__* pdata; TYPE_2__* mmc; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {scalar_t__ timing; } ;
struct TYPE_5__ {int actual_clock; TYPE_1__ ios; } ;


 int CLK_CTL_DIV_MASK ;
 int CLK_CTL_SCLKEN ;
 int CTL_SD_CARD_CLK_CTL ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 int TMIO_MMC_CLK_ACTUAL ;
 int TMIO_MMC_MIN_RCAR2 ;
 int renesas_sdhi_clk_update (struct tmio_mmc_host*,unsigned int) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void renesas_sdhi_set_clock(struct tmio_mmc_host *host,
       unsigned int new_clock)
{
 u32 clk = 0, clock;

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
  sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));

 if (new_clock == 0) {
  host->mmc->actual_clock = 0;
  goto out;
 }

 host->mmc->actual_clock = renesas_sdhi_clk_update(host, new_clock);
 clock = host->mmc->actual_clock / 512;

 for (clk = 0x80000080; new_clock >= (clock << 1); clk >>= 1)
  clock <<= 1;


 if ((host->pdata->flags & TMIO_MMC_CLK_ACTUAL) && ((clk >> 22) & 0x1)) {
  if (!(host->mmc->ios.timing == MMC_TIMING_MMC_HS400))
   clk |= 0xff;
  else
   clk &= ~0xff;
 }

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, clk & CLK_CTL_DIV_MASK);
 if (!(host->pdata->flags & TMIO_MMC_MIN_RCAR2))
  usleep_range(10000, 11000);

 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
  sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));

out:

 if (!(host->pdata->flags & TMIO_MMC_MIN_RCAR2))
  usleep_range(10000, 11000);
}
