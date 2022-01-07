
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int dummy; } ;
struct mmc_ios {int bus_width; } ;
struct mmc_host {int dummy; } ;


 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 int sunxi_mmc_card_power (struct sunxi_mmc_host*,struct mmc_ios*) ;
 int sunxi_mmc_set_bus_width (struct sunxi_mmc_host*,int ) ;
 int sunxi_mmc_set_clk (struct sunxi_mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static void sunxi_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sunxi_mmc_host *host = mmc_priv(mmc);

 sunxi_mmc_card_power(host, ios);
 sunxi_mmc_set_bus_width(host, ios->bus_width);
 sunxi_mmc_set_clk(host, ios);
}
