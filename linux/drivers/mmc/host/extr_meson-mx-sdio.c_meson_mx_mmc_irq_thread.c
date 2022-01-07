
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_command {TYPE_1__* data; } ;
struct meson_mx_mmc_host {int mmc; int cmd_timeout; struct mmc_command* cmd; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int bytes_xfered; int blksz; int blocks; int sg_len; int sg; } ;


 int IRQ_HANDLED ;
 scalar_t__ WARN_ON (int) ;
 int del_timer_sync (int *) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 struct mmc_command* meson_mx_mmc_get_next_cmd (struct mmc_command*) ;
 int meson_mx_mmc_request_done (struct meson_mx_mmc_host*) ;
 int meson_mx_mmc_start_cmd (int ,struct mmc_command*) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t meson_mx_mmc_irq_thread(int irq, void *irq_data)
{
 struct meson_mx_mmc_host *host = (void *) irq_data;
 struct mmc_command *cmd = host->cmd, *next_cmd;

 if (WARN_ON(!cmd))
  return IRQ_HANDLED;

 del_timer_sync(&host->cmd_timeout);

 if (cmd->data) {
  dma_unmap_sg(mmc_dev(host->mmc), cmd->data->sg,
    cmd->data->sg_len,
    mmc_get_dma_dir(cmd->data));

  cmd->data->bytes_xfered = cmd->data->blksz * cmd->data->blocks;
 }

 next_cmd = meson_mx_mmc_get_next_cmd(cmd);
 if (next_cmd)
  meson_mx_mmc_start_cmd(host->mmc, next_cmd);
 else
  meson_mx_mmc_request_done(host);

 return IRQ_HANDLED;
}
