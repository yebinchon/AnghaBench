
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int esdhc_tuning_block_enable (int ,int) ;
 int mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int esdhc_hs400_prepare_ddr(struct mmc_host *mmc)
{
 esdhc_tuning_block_enable(mmc_priv(mmc), 0);
 return 0;
}
