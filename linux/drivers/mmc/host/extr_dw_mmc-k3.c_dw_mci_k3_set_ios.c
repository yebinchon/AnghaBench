
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int clock; } ;
struct dw_mci {int ciu_clk; int bus_hz; int dev; } ;


 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_warn (int ,char*,int ) ;

__attribute__((used)) static void dw_mci_k3_set_ios(struct dw_mci *host, struct mmc_ios *ios)
{
 int ret;

 ret = clk_set_rate(host->ciu_clk, ios->clock);
 if (ret)
  dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);

 host->bus_hz = clk_get_rate(host->ciu_clk);
}
