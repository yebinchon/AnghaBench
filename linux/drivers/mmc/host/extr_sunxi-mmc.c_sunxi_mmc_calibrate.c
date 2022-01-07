
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_mmc_host {scalar_t__ reg_base; TYPE_1__* cfg; } ;
struct TYPE_2__ {int can_calibrate; } ;


 int SDXC_CAL_DL_SW_EN ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sunxi_mmc_calibrate(struct sunxi_mmc_host *host, int reg_off)
{
 if (!host->cfg->can_calibrate)
  return 0;
 writel(SDXC_CAL_DL_SW_EN, host->reg_base + reg_off);

 return 0;
}
