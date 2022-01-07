
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int bus_mode; } ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {int bus_mode; int hw_bus_mode; } ;


 struct goldfish_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void goldfish_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct goldfish_mmc_host *host = mmc_priv(mmc);

 host->bus_mode = ios->bus_mode;
 host->hw_bus_mode = host->bus_mode;
}
