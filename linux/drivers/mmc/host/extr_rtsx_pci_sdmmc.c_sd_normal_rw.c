
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct realtek_pci_sdmmc {scalar_t__ initial_mode; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int flags; scalar_t__ blksz; int sg_len; int sg; } ;
struct mmc_command {int error; } ;


 int ENOMEM ;
 int GFP_NOIO ;
 int MMC_DATA_READ ;
 int kfree (int *) ;
 int * kzalloc (scalar_t__,int ) ;
 int sd_disable_initial_mode (struct realtek_pci_sdmmc*) ;
 int sd_enable_initial_mode (struct realtek_pci_sdmmc*) ;
 int sd_read_data (struct realtek_pci_sdmmc*,struct mmc_command*,int ,int *,scalar_t__,int) ;
 int sd_write_data (struct realtek_pci_sdmmc*,struct mmc_command*,int ,int *,scalar_t__,int) ;
 int sg_copy_from_buffer (int ,int ,int *,scalar_t__) ;
 int sg_copy_to_buffer (int ,int ,int *,scalar_t__) ;

__attribute__((used)) static void sd_normal_rw(struct realtek_pci_sdmmc *host,
  struct mmc_request *mrq)
{
 struct mmc_command *cmd = mrq->cmd;
 struct mmc_data *data = mrq->data;
 u8 *buf;

 buf = kzalloc(data->blksz, GFP_NOIO);
 if (!buf) {
  cmd->error = -ENOMEM;
  return;
 }

 if (data->flags & MMC_DATA_READ) {
  if (host->initial_mode)
   sd_disable_initial_mode(host);

  cmd->error = sd_read_data(host, cmd, (u16)data->blksz, buf,
    data->blksz, 200);

  if (host->initial_mode)
   sd_enable_initial_mode(host);

  sg_copy_from_buffer(data->sg, data->sg_len, buf, data->blksz);
 } else {
  sg_copy_to_buffer(data->sg, data->sg_len, buf, data->blksz);

  cmd->error = sd_write_data(host, cmd, (u16)data->blksz, buf,
    data->blksz, 200);
 }

 kfree(buf);
}
