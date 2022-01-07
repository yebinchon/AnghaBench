
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {scalar_t__ host_cookie; int sg_count; int sg; int blocks; scalar_t__ bytes_xfered; } ;
struct mmc_command {struct mmc_data* data; } ;
struct alcor_sdmmc_host {int blocks; int sg_count; int dev; int sg; struct mmc_data* data; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_DATA_XFER_CTRL ;
 scalar_t__ COOKIE_MAPPED ;
 int alcor_prepare_sg_miter (struct alcor_sdmmc_host*) ;
 int alcor_write8 (struct alcor_pci_priv*,int ,int ) ;
 int dev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static void alcor_prepare_data(struct alcor_sdmmc_host *host,
          struct mmc_command *cmd)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 struct mmc_data *data = cmd->data;

 if (!data)
  return;


 host->data = data;
 host->data->bytes_xfered = 0;
 host->blocks = data->blocks;
 host->sg = data->sg;
 host->sg_count = data->sg_count;
 dev_dbg(host->dev, "prepare DATA: sg %i, blocks: %i\n",
   host->sg_count, host->blocks);

 if (data->host_cookie != COOKIE_MAPPED)
  alcor_prepare_sg_miter(host);

 alcor_write8(priv, 0, AU6601_DATA_XFER_CTRL);
}
