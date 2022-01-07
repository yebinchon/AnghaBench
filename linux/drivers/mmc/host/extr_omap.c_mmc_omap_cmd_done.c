
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int current_slot; struct mmc_host* mmc; int * mrq; int * data; int cmd_abort_timer; int * cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int* resp; int mrq; scalar_t__ error; } ;


 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int RSP0 ;
 int RSP1 ;
 int RSP2 ;
 int RSP3 ;
 int RSP4 ;
 int RSP5 ;
 int RSP6 ;
 int RSP7 ;
 int del_timer (int *) ;
 int mmc_omap_abort_xfer (struct mmc_omap_host*,int *) ;
 int mmc_omap_release_slot (int ,int) ;
 int mmc_request_done (struct mmc_host*,int ) ;

__attribute__((used)) static void
mmc_omap_cmd_done(struct mmc_omap_host *host, struct mmc_command *cmd)
{
 host->cmd = ((void*)0);

 del_timer(&host->cmd_abort_timer);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {

   cmd->resp[3] =
    OMAP_MMC_READ(host, RSP0) |
    (OMAP_MMC_READ(host, RSP1) << 16);
   cmd->resp[2] =
    OMAP_MMC_READ(host, RSP2) |
    (OMAP_MMC_READ(host, RSP3) << 16);
   cmd->resp[1] =
    OMAP_MMC_READ(host, RSP4) |
    (OMAP_MMC_READ(host, RSP5) << 16);
   cmd->resp[0] =
    OMAP_MMC_READ(host, RSP6) |
    (OMAP_MMC_READ(host, RSP7) << 16);
  } else {

   cmd->resp[0] =
    OMAP_MMC_READ(host, RSP6) |
    (OMAP_MMC_READ(host, RSP7) << 16);
  }
 }

 if (host->data == ((void*)0) || cmd->error) {
  struct mmc_host *mmc;

  if (host->data != ((void*)0))
   mmc_omap_abort_xfer(host, host->data);
  host->mrq = ((void*)0);
  mmc = host->mmc;
  mmc_omap_release_slot(host->current_slot, 1);
  mmc_request_done(mmc, cmd->mrq);
 }
}
