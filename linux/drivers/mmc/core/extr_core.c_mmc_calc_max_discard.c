
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {scalar_t__ max_busy_timeout; } ;
struct TYPE_2__ {int erase_group_def; } ;
struct mmc_card {unsigned int pref_erase; unsigned int erase_size; TYPE_1__ ext_csd; struct mmc_host* host; } ;


 int MMC_ERASE_ARG ;
 scalar_t__ MMC_ERASE_TIMEOUT_MS ;
 int MMC_TRIM_ARG ;
 scalar_t__ mmc_can_trim (struct mmc_card*) ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 unsigned int mmc_do_calc_max_discard (struct mmc_card*,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,unsigned int,scalar_t__) ;

unsigned int mmc_calc_max_discard(struct mmc_card *card)
{
 struct mmc_host *host = card->host;
 unsigned int max_discard, max_trim;






 if (mmc_card_mmc(card) && !(card->ext_csd.erase_group_def & 1))
  return card->pref_erase;

 max_discard = mmc_do_calc_max_discard(card, MMC_ERASE_ARG);
 if (mmc_can_trim(card)) {
  max_trim = mmc_do_calc_max_discard(card, MMC_TRIM_ARG);
  if (max_trim < max_discard || max_discard == 0)
   max_discard = max_trim;
 } else if (max_discard < card->erase_size) {
  max_discard = 0;
 }
 pr_debug("%s: calculated max. discard sectors %u for timeout %u ms\n",
  mmc_hostname(host), max_discard, host->max_busy_timeout ?
  host->max_busy_timeout : MMC_ERASE_TIMEOUT_MS);
 return max_discard;
}
