
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int quirks; int timeout_clk; int quirks2; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int opcode; int busy_timeout; struct mmc_data* data; } ;


 int DBG (char*,int,int ) ;
 int SDHCI_QUIRK2_DISABLE_HW_TIMEOUT ;
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ;
 unsigned int sdhci_target_timeout (struct sdhci_host*,struct mmc_command*,struct mmc_data*) ;

__attribute__((used)) static u8 sdhci_calc_timeout(struct sdhci_host *host, struct mmc_command *cmd,
        bool *too_big)
{
 u8 count;
 struct mmc_data *data;
 unsigned target_timeout, current_timeout;

 *too_big = 1;







 if (host->quirks & SDHCI_QUIRK_BROKEN_TIMEOUT_VAL)
  return 0xE;


 if (cmd == ((void*)0))
  return 0xE;

 data = cmd->data;

 if (!data && !cmd->busy_timeout)
  return 0xE;


 target_timeout = sdhci_target_timeout(host, cmd, data);
 count = 0;
 current_timeout = (1 << 13) * 1000 / host->timeout_clk;
 while (current_timeout < target_timeout) {
  count++;
  current_timeout <<= 1;
  if (count >= 0xF)
   break;
 }

 if (count >= 0xF) {
  if (!(host->quirks2 & SDHCI_QUIRK2_DISABLE_HW_TIMEOUT))
   DBG("Too large timeout 0x%x requested for CMD%d!\n",
       count, cmd->opcode);
  count = 0xE;
 } else {
  *too_big = 0;
 }

 return count;
}
