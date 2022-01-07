
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct mmc_card {int type; size_t sd_bus_speed; TYPE_1__ dev; int host; int rca; } ;


 size_t ARRAY_SIZE (char const* const*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_add (TYPE_1__*) ;
 int device_enable_async_suspend (TYPE_1__*) ;
 int mmc_add_card_debugfs (struct mmc_card*) ;
 int mmc_card_blockaddr (struct mmc_card*) ;
 scalar_t__ mmc_card_ddr52 (struct mmc_card*) ;
 int mmc_card_ext_capacity (struct mmc_card*) ;
 scalar_t__ mmc_card_hs (struct mmc_card*) ;
 scalar_t__ mmc_card_hs200 (struct mmc_card*) ;
 scalar_t__ mmc_card_hs400 (struct mmc_card*) ;
 scalar_t__ mmc_card_hs400es (struct mmc_card*) ;
 int mmc_card_set_present (struct mmc_card*) ;
 scalar_t__ mmc_card_uhs (struct mmc_card*) ;
 scalar_t__ mmc_host_is_spi (int ) ;
 int mmc_hostname (int ) ;
 int mmc_of_find_child_device (int ,int ) ;
 int pr_info (char*,int ,char*,char*,char const*,...) ;

int mmc_add_card(struct mmc_card *card)
{
 int ret;
 const char *type;
 const char *uhs_bus_speed_mode = "";
 static const char *const uhs_speeds[] = {
  [130] = "SDR12 ",
  [129] = "SDR25 ",
  [128] = "SDR50 ",
  [131] = "SDR104 ",
  [132] = "DDR50 ",
 };


 dev_set_name(&card->dev, "%s:%04x", mmc_hostname(card->host), card->rca);

 switch (card->type) {
 case 136:
  type = "MMC";
  break;
 case 135:
  type = "SD";
  if (mmc_card_blockaddr(card)) {
   if (mmc_card_ext_capacity(card))
    type = "SDXC";
   else
    type = "SDHC";
  }
  break;
 case 134:
  type = "SDIO";
  break;
 case 133:
  type = "SD-combo";
  if (mmc_card_blockaddr(card))
   type = "SDHC-combo";
  break;
 default:
  type = "?";
  break;
 }

 if (mmc_card_uhs(card) &&
  (card->sd_bus_speed < ARRAY_SIZE(uhs_speeds)))
  uhs_bus_speed_mode = uhs_speeds[card->sd_bus_speed];

 if (mmc_host_is_spi(card->host)) {
  pr_info("%s: new %s%s%s card on SPI\n",
   mmc_hostname(card->host),
   mmc_card_hs(card) ? "high speed " : "",
   mmc_card_ddr52(card) ? "DDR " : "",
   type);
 } else {
  pr_info("%s: new %s%s%s%s%s%s card at address %04x\n",
   mmc_hostname(card->host),
   mmc_card_uhs(card) ? "ultra high speed " :
   (mmc_card_hs(card) ? "high speed " : ""),
   mmc_card_hs400(card) ? "HS400 " :
   (mmc_card_hs200(card) ? "HS200 " : ""),
   mmc_card_hs400es(card) ? "Enhanced strobe " : "",
   mmc_card_ddr52(card) ? "DDR " : "",
   uhs_bus_speed_mode, type, card->rca);
 }




 card->dev.of_node = mmc_of_find_child_device(card->host, 0);

 device_enable_async_suspend(&card->dev);

 ret = device_add(&card->dev);
 if (ret)
  return ret;

 mmc_card_set_present(card);

 return 0;
}
