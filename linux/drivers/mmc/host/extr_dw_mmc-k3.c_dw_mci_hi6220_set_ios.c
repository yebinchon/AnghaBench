
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int clock; } ;
struct dw_mci {int biu_clk; int bus_hz; int dev; } ;


 int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;

__attribute__((used)) static void dw_mci_hi6220_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 int ret;
 unsigned int clock;

 clock = (ios->clock <= 25000000) ? 25000000 : ios->clock;

 ret = clk_set_rate(host->biu_clk, clock);
 if (ret)
  dev_warn(host->dev, "failed to set rate %uHz\n", clock);

 host->bus_hz = clk_get_rate(host->biu_clk);
}
