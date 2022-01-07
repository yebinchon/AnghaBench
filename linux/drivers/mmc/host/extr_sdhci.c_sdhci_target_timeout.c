
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ clock; } ;
struct mmc_data {unsigned long long timeout_clks; int timeout_ns; } ;
struct mmc_command {int busy_timeout; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 scalar_t__ do_div (unsigned long long,scalar_t__) ;

__attribute__((used)) static unsigned int sdhci_target_timeout(struct sdhci_host *host,
      struct mmc_command *cmd,
      struct mmc_data *data)
{
 unsigned int target_timeout;


 if (!data) {
  target_timeout = cmd->busy_timeout * 1000;
 } else {
  target_timeout = DIV_ROUND_UP(data->timeout_ns, 1000);
  if (host->clock && data->timeout_clks) {
   unsigned long long val;






   val = 1000000ULL * data->timeout_clks;
   if (do_div(val, host->clock))
    target_timeout++;
   target_timeout += val;
  }
 }

 return target_timeout;
}
