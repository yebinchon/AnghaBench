
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {unsigned int blksz; unsigned int blocks; int sg_len; int sg; } ;
struct mmc_command {int mrq; struct mmc_data* data; scalar_t__ error; } ;
struct meson_host {unsigned int bounce_buf_size; int mmc; int bounce_buf; struct mmc_command* cmd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ meson_mmc_bounce_buf_read (struct mmc_data*) ;
 struct mmc_command* meson_mmc_get_next_command (struct mmc_command*) ;
 int meson_mmc_request_done (int ,int ) ;
 int meson_mmc_start_cmd (int ,struct mmc_command*) ;
 int meson_mmc_wait_desc_stop (struct meson_host*) ;
 int sg_copy_from_buffer (int ,int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t meson_mmc_irq_thread(int irq, void *dev_id)
{
 struct meson_host *host = dev_id;
 struct mmc_command *next_cmd, *cmd = host->cmd;
 struct mmc_data *data;
 unsigned int xfer_bytes;

 if (WARN_ON(!cmd))
  return IRQ_NONE;

 if (cmd->error) {
  meson_mmc_wait_desc_stop(host);
  meson_mmc_request_done(host->mmc, cmd->mrq);

  return IRQ_HANDLED;
 }

 data = cmd->data;
 if (meson_mmc_bounce_buf_read(data)) {
  xfer_bytes = data->blksz * data->blocks;
  WARN_ON(xfer_bytes > host->bounce_buf_size);
  sg_copy_from_buffer(data->sg, data->sg_len,
        host->bounce_buf, xfer_bytes);
 }

 next_cmd = meson_mmc_get_next_command(cmd);
 if (next_cmd)
  meson_mmc_start_cmd(host->mmc, next_cmd);
 else
  meson_mmc_request_done(host->mmc, cmd->mrq);

 return IRQ_HANDLED;
}
