
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; scalar_t__ data; } ;


 int MMC_RSP_BUSY ;

__attribute__((used)) static inline bool sdhci_data_line_cmd(struct mmc_command *cmd)
{
 return cmd->data || cmd->flags & MMC_RSP_BUSY;
}
