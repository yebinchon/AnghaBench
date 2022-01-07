
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_host {int flags; scalar_t__ version; } ;
struct mmc_command {scalar_t__ opcode; TYPE_1__* mrq; } ;
struct TYPE_2__ {scalar_t__ sbc; } ;


 int SDHCI_AUTO_CMD23 ;
 int SDHCI_CMD23_ENABLE ;
 int SDHCI_HOST_CONTROL2 ;
 scalar_t__ SDHCI_SPEC_410 ;
 int SDHCI_TRNS_AUTO_CMD12 ;
 int SDHCI_TRNS_AUTO_CMD23 ;
 int SDHCI_TRNS_AUTO_SEL ;
 scalar_t__ SD_IO_RW_EXTENDED ;
 scalar_t__ sdhci_auto_cmd12 (struct sdhci_host*,TYPE_1__*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static inline void sdhci_auto_cmd_select(struct sdhci_host *host,
      struct mmc_command *cmd,
      u16 *mode)
{
 bool use_cmd12 = sdhci_auto_cmd12(host, cmd->mrq) &&
    (cmd->opcode != SD_IO_RW_EXTENDED);
 bool use_cmd23 = cmd->mrq->sbc && (host->flags & SDHCI_AUTO_CMD23);
 u16 ctrl2;






 if (host->version >= SDHCI_SPEC_410 && (use_cmd12 || use_cmd23)) {
  *mode |= SDHCI_TRNS_AUTO_SEL;

  ctrl2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
  if (use_cmd23)
   ctrl2 |= SDHCI_CMD23_ENABLE;
  else
   ctrl2 &= ~SDHCI_CMD23_ENABLE;
  sdhci_writew(host, ctrl2, SDHCI_HOST_CONTROL2);

  return;
 }





 if (use_cmd12)
  *mode |= SDHCI_TRNS_AUTO_CMD12;
 else if (use_cmd23)
  *mode |= SDHCI_TRNS_AUTO_CMD23;
}
