
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {unsigned int mmc_input_clk; int ns_in_one_cycle; } ;



__attribute__((used)) static unsigned int calculate_freq_for_card(struct mmc_davinci_host *host,
 unsigned int mmc_req_freq)
{
 unsigned int mmc_freq = 0, mmc_pclk = 0, mmc_push_pull_divisor = 0;

 mmc_pclk = host->mmc_input_clk;
 if (mmc_req_freq && mmc_pclk > (2 * mmc_req_freq))
  mmc_push_pull_divisor = ((unsigned int)mmc_pclk
    / (2 * mmc_req_freq)) - 1;
 else
  mmc_push_pull_divisor = 0;

 mmc_freq = (unsigned int)mmc_pclk
  / (2 * (mmc_push_pull_divisor + 1));

 if (mmc_freq > mmc_req_freq)
  mmc_push_pull_divisor = mmc_push_pull_divisor + 1;

 if (mmc_req_freq <= 400000)
  host->ns_in_one_cycle = (1000000) / (((mmc_pclk
    / (2 * (mmc_push_pull_divisor + 1)))/1000));
 else
  host->ns_in_one_cycle = (1000000) / (((mmc_pclk
    / (2 * (mmc_push_pull_divisor + 1)))/1000000));

 return mmc_push_pull_divisor;
}
