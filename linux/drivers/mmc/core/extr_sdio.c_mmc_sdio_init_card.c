
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {scalar_t__ signal_voltage; } ;
struct mmc_host {int caps2; struct mmc_card* card; TYPE_6__ ios; TYPE_1__* ops; int claimed; } ;
struct TYPE_11__ {scalar_t__ sd3_bus_mode; } ;
struct TYPE_10__ {int * type; } ;
struct TYPE_9__ {scalar_t__ vendor; scalar_t__ device; int max_dtr; } ;
struct TYPE_8__ {scalar_t__ high_speed; } ;
struct mmc_card {scalar_t__ type; int quirks; int ocr; int host; TYPE_5__ sw_caps; TYPE_4__ dev; TYPE_3__ cis; TYPE_2__ cccr; int rca; int raw_cid; } ;
struct TYPE_7__ {int (* init_card ) (struct mmc_host*,struct mmc_card*) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct mmc_card*) ;
 int MMC_CAP2_AVOID_3_3V ;
 int MMC_QUIRK_NONSTD_SDIO ;
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ;
 int MMC_TIMING_SD_HS ;
 scalar_t__ MMC_TYPE_SDIO ;
 scalar_t__ MMC_TYPE_SD_COMBO ;
 int PTR_ERR (struct mmc_card*) ;
 int R4_18V_PRESENT ;
 int R4_MEMORY_PRESENT ;
 int WARN_ON (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 struct mmc_card* mmc_alloc_card (struct mmc_host*,int *) ;
 int mmc_decode_cid (struct mmc_card*) ;
 int mmc_fixup_device (struct mmc_card*,int ) ;
 int mmc_go_idle (struct mmc_host*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 scalar_t__ mmc_host_uhs (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_remove_card (struct mmc_card*) ;
 scalar_t__ mmc_sd_get_cid (struct mmc_host*,int,int ,int *) ;
 int mmc_sd_get_csd (struct mmc_host*,struct mmc_card*) ;
 int mmc_sd_setup_card (struct mmc_host*,struct mmc_card*,int ) ;
 int mmc_sdio_get_max_clock (struct mmc_card*) ;
 int mmc_sdio_init_uhs_card (struct mmc_card*) ;
 int mmc_sdio_resend_if_cond (struct mmc_host*,struct mmc_card*) ;
 int mmc_select_card (struct mmc_card*) ;
 int mmc_send_io_op_cond (struct mmc_host*,int,int*) ;
 int mmc_send_relative_addr (struct mmc_host*,int *) ;
 int mmc_set_clock (struct mmc_host*,int ) ;
 int mmc_set_timing (int ,int ) ;
 int mmc_set_uhs_voltage (struct mmc_host*,int) ;
 int mmc_spi_set_crc (struct mmc_host*,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ) ;
 int sd_type ;
 int sdio_disable_cd (struct mmc_card*) ;
 int sdio_enable_4bit_bus (struct mmc_card*) ;
 int sdio_enable_hs (struct mmc_card*) ;
 int sdio_fixup_methods ;
 int sdio_read_cccr (struct mmc_card*,int) ;
 int sdio_read_common_cis (struct mmc_card*) ;
 int stub1 (struct mmc_host*,struct mmc_card*) ;
 int use_spi_crc ;

__attribute__((used)) static int mmc_sdio_init_card(struct mmc_host *host, u32 ocr,
         struct mmc_card *oldcard)
{
 struct mmc_card *card;
 int err;
 int retries = 10;
 u32 rocr = 0;
 u32 ocr_card = ocr;

 WARN_ON(!host->claimed);


 if (mmc_host_uhs(host))
  ocr |= R4_18V_PRESENT;

try_again:
 if (!retries) {
  pr_warn("%s: Skipping voltage switch\n", mmc_hostname(host));
  ocr &= ~R4_18V_PRESENT;
 }




 err = mmc_send_io_op_cond(host, ocr, &rocr);
 if (err)
  goto err;




 if (mmc_host_is_spi(host)) {
  err = mmc_spi_set_crc(host, use_spi_crc);
  if (err)
   goto err;
 }




 card = mmc_alloc_card(host, ((void*)0));
 if (IS_ERR(card)) {
  err = PTR_ERR(card);
  goto err;
 }

 if ((rocr & R4_MEMORY_PRESENT) &&
     mmc_sd_get_cid(host, ocr & rocr, card->raw_cid, ((void*)0)) == 0) {
  card->type = MMC_TYPE_SD_COMBO;

  if (oldcard && (oldcard->type != MMC_TYPE_SD_COMBO ||
      memcmp(card->raw_cid, oldcard->raw_cid, sizeof(card->raw_cid)) != 0)) {
   mmc_remove_card(card);
   pr_debug("%s: Perhaps the card was replaced\n",
    mmc_hostname(host));
   return -ENOENT;
  }
 } else {
  card->type = MMC_TYPE_SDIO;

  if (oldcard && oldcard->type != MMC_TYPE_SDIO) {
   mmc_remove_card(card);
   pr_debug("%s: Perhaps the card was replaced\n",
    mmc_hostname(host));
   return -ENOENT;
  }
 }




 if (host->ops->init_card)
  host->ops->init_card(host, card);
 if (rocr & ocr & R4_18V_PRESENT) {
  err = mmc_set_uhs_voltage(host, ocr_card);
  if (err == -EAGAIN) {
   mmc_sdio_resend_if_cond(host, card);
   retries--;
   goto try_again;
  } else if (err) {
   ocr &= ~R4_18V_PRESENT;
  }
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_send_relative_addr(host, &card->rca);
  if (err)
   goto remove;






  if (oldcard)
   oldcard->rca = card->rca;
 }




 if (!oldcard && card->type == MMC_TYPE_SD_COMBO) {
  err = mmc_sd_get_csd(host, card);
  if (err)
   return err;

  mmc_decode_cid(card);
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_select_card(card);
  if (err)
   goto remove;
 }

 if (card->quirks & MMC_QUIRK_NONSTD_SDIO) {






  mmc_set_clock(host, card->cis.max_dtr);

  if (card->cccr.high_speed) {
   mmc_set_timing(card->host, MMC_TIMING_SD_HS);
  }

  goto finish;
 }





 err = sdio_read_cccr(card, ocr);
 if (err) {
  mmc_sdio_resend_if_cond(host, card);
  if (ocr & R4_18V_PRESENT) {

   retries = 0;
   goto try_again;
  } else {
   goto remove;
  }
 }




 err = sdio_read_common_cis(card);
 if (err)
  goto remove;

 if (oldcard) {
  int same = (card->cis.vendor == oldcard->cis.vendor &&
       card->cis.device == oldcard->cis.device);
  mmc_remove_card(card);
  if (!same) {
   pr_debug("%s: Perhaps the card was replaced\n",
    mmc_hostname(host));
   return -ENOENT;
  }

  card = oldcard;
 }
 card->ocr = ocr_card;
 mmc_fixup_device(card, sdio_fixup_methods);

 if (card->type == MMC_TYPE_SD_COMBO) {
  err = mmc_sd_setup_card(host, card, oldcard != ((void*)0));

  if (err) {
   mmc_go_idle(host);
   if (mmc_host_is_spi(host))

    mmc_spi_set_crc(host, use_spi_crc);
   card->type = MMC_TYPE_SDIO;
  } else
   card->dev.type = &sd_type;
 }




 err = sdio_disable_cd(card);
 if (err)
  goto remove;



 if ((ocr & R4_18V_PRESENT) && card->sw_caps.sd3_bus_mode) {
  err = mmc_sdio_init_uhs_card(card);
  if (err)
   goto remove;
 } else {



  err = sdio_enable_hs(card);
  if (err > 0)
   mmc_set_timing(card->host, MMC_TIMING_SD_HS);
  else if (err)
   goto remove;




  mmc_set_clock(host, mmc_sdio_get_max_clock(card));




  err = sdio_enable_4bit_bus(card);
  if (err)
   goto remove;
 }

 if (host->caps2 & MMC_CAP2_AVOID_3_3V &&
     host->ios.signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
  pr_err("%s: Host failed to negotiate down from 3.3V\n",
   mmc_hostname(host));
  err = -EINVAL;
  goto remove;
 }
finish:
 if (!oldcard)
  host->card = card;
 return 0;

remove:
 if (!oldcard)
  mmc_remove_card(card);

err:
 return err;
}
