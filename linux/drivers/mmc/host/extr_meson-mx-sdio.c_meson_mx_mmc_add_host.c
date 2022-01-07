
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int max_blk_size; int caps; int * ops; void* f_max; void* f_min; void* max_blk_count; int max_req_size; int max_seg_size; } ;
struct meson_mx_mmc_host {int parent_clk; int cfg_div_clk; int slot_id; struct mmc_host* mmc; } ;
struct device {int of_node; } ;


 int BITS_PER_BYTE ;
 int EINVAL ;
 void* FIELD_GET (int ,int) ;
 int MESON_MX_SDIO_BOUNCE_REQ_SIZE ;
 int MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK ;
 int MESON_MX_SDIO_MAX_SLOTS ;
 int MESON_MX_SDIO_RESPONSE_CRC16_BITS ;
 int MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK ;
 int MMC_CAP_CMD23 ;
 int MMC_CAP_ERASE ;
 int clk_get_rate (int ) ;
 void* clk_round_rate (int ,int) ;
 int dev_err (struct device*,char*,...) ;
 int meson_mx_mmc_ops ;
 int mmc_add_host (struct mmc_host*) ;
 struct device* mmc_dev (struct mmc_host*) ;
 int mmc_of_parse (struct mmc_host*) ;
 int mmc_regulator_get_supply (struct mmc_host*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int meson_mx_mmc_add_host(struct meson_mx_mmc_host *host)
{
 struct mmc_host *mmc = host->mmc;
 struct device *slot_dev = mmc_dev(mmc);
 int ret;

 if (of_property_read_u32(slot_dev->of_node, "reg", &host->slot_id)) {
  dev_err(slot_dev, "missing 'reg' property\n");
  return -EINVAL;
 }

 if (host->slot_id >= MESON_MX_SDIO_MAX_SLOTS) {
  dev_err(slot_dev, "invalid 'reg' property value %d\n",
   host->slot_id);
  return -EINVAL;
 }


 ret = mmc_regulator_get_supply(mmc);
 if (ret)
  return ret;

 mmc->max_req_size = MESON_MX_SDIO_BOUNCE_REQ_SIZE;
 mmc->max_seg_size = mmc->max_req_size;
 mmc->max_blk_count =
  FIELD_GET(MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK,
     0xffffffff);
 mmc->max_blk_size = FIELD_GET(MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK,
          0xffffffff);
 mmc->max_blk_size -= (4 * MESON_MX_SDIO_RESPONSE_CRC16_BITS);
 mmc->max_blk_size /= BITS_PER_BYTE;


 mmc->f_min = clk_round_rate(host->cfg_div_clk, 1);
 mmc->f_max = clk_round_rate(host->cfg_div_clk,
        clk_get_rate(host->parent_clk));

 mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
 mmc->ops = &meson_mx_mmc_ops;

 ret = mmc_of_parse(mmc);
 if (ret)
  return ret;

 ret = mmc_add_host(mmc);
 if (ret)
  return ret;

 return 0;
}
