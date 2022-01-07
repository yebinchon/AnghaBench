
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int mmc_priv (struct mmc_host*) ;
 int sdhci_dumpregs (int ) ;

__attribute__((used)) static void sdhci_arasan_dumpregs(struct mmc_host *mmc)
{
 sdhci_dumpregs(mmc_priv(mmc));
}
