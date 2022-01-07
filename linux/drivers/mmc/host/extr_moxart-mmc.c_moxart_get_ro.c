
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxart_host {scalar_t__ base; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ REG_STATUS ;
 int WRITE_PROT ;
 struct moxart_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int moxart_get_ro(struct mmc_host *mmc)
{
 struct moxart_host *host = mmc_priv(mmc);

 return !!(readl(host->base + REG_STATUS) & WRITE_PROT);
}
