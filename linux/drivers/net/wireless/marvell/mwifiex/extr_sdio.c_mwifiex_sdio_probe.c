
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sdio_mmc_card {int fw_done; int work; int can_ext_scan; int can_auto_tdls; int fw_dump_enh; int can_dump_fw; int mp_rx_agg_buf_size; int mp_tx_agg_buf_size; int tx_buf_size; int has_control_mask; int supports_sdio_new_mode; int mp_agg_pkt_limit; int max_ports; int reg; int firmware; struct sdio_func* func; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct sdio_func {TYPE_2__ dev; TYPE_1__* card; int num; int class; int device; int vendor; } ;
struct sdio_device_id {scalar_t__ driver_data; } ;
struct mwifiex_sdio_device {int can_ext_scan; int can_auto_tdls; int fw_dump_enh; int can_dump_fw; int mp_rx_agg_buf_size; int mp_tx_agg_buf_size; int tx_buf_size; int has_control_mask; int supports_sdio_new_mode; int mp_agg_pkt_limit; int max_ports; int reg; int firmware; } ;
struct TYPE_6__ {int quirks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MMC_QUIRK_BLKSZ_FOR_BYTE_MODE ;
 int MWIFIEX_SDIO ;
 int dev_err (TYPE_2__*,char*) ;
 struct sdio_mmc_card* devm_kzalloc (TYPE_2__*,int,int ) ;
 int init_completion (int *) ;
 int mwifiex_add_card (struct sdio_mmc_card*,int *,int *,int ,TYPE_2__*) ;
 int mwifiex_sdio_probe_of (TYPE_2__*) ;
 int mwifiex_sdio_work ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_ops ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static int
mwifiex_sdio_probe(struct sdio_func *func, const struct sdio_device_id *id)
{
 int ret;
 struct sdio_mmc_card *card = ((void*)0);

 pr_debug("info: vendor=0x%4.04X device=0x%4.04X class=%d function=%d\n",
   func->vendor, func->device, func->class, func->num);

 card = devm_kzalloc(&func->dev, sizeof(*card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;

 init_completion(&card->fw_done);

 card->func = func;

 func->card->quirks |= MMC_QUIRK_BLKSZ_FOR_BYTE_MODE;

 if (id->driver_data) {
  struct mwifiex_sdio_device *data = (void *)id->driver_data;

  card->firmware = data->firmware;
  card->reg = data->reg;
  card->max_ports = data->max_ports;
  card->mp_agg_pkt_limit = data->mp_agg_pkt_limit;
  card->supports_sdio_new_mode = data->supports_sdio_new_mode;
  card->has_control_mask = data->has_control_mask;
  card->tx_buf_size = data->tx_buf_size;
  card->mp_tx_agg_buf_size = data->mp_tx_agg_buf_size;
  card->mp_rx_agg_buf_size = data->mp_rx_agg_buf_size;
  card->can_dump_fw = data->can_dump_fw;
  card->fw_dump_enh = data->fw_dump_enh;
  card->can_auto_tdls = data->can_auto_tdls;
  card->can_ext_scan = data->can_ext_scan;
  INIT_WORK(&card->work, mwifiex_sdio_work);
 }

 sdio_claim_host(func);
 ret = sdio_enable_func(func);
 sdio_release_host(func);

 if (ret) {
  dev_err(&func->dev, "failed to enable function\n");
  return ret;
 }


 if (func->dev.of_node) {
  ret = mwifiex_sdio_probe_of(&func->dev);
  if (ret)
   goto err_disable;
 }

 ret = mwifiex_add_card(card, &card->fw_done, &sdio_ops,
          MWIFIEX_SDIO, &func->dev);
 if (ret) {
  dev_err(&func->dev, "add card failed\n");
  goto err_disable;
 }

 return 0;

err_disable:
 sdio_claim_host(func);
 sdio_disable_func(func);
 sdio_release_host(func);

 return ret;
}
