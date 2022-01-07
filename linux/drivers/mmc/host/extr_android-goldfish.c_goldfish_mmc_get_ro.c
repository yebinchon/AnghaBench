
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {int dummy; } ;


 int GOLDFISH_MMC_READ (struct goldfish_mmc_host*,int ) ;
 int MMC_STATE ;
 int MMC_STATE_READ_ONLY ;
 struct goldfish_mmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int goldfish_mmc_get_ro(struct mmc_host *mmc)
{
 uint32_t state;
 struct goldfish_mmc_host *host = mmc_priv(mmc);

 state = GOLDFISH_MMC_READ(host, MMC_STATE);
 return ((state & MMC_STATE_READ_ONLY) != 0);
}
