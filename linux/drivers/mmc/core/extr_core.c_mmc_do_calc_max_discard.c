
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int max_busy_timeout; } ;
struct mmc_card {int erase_shift; unsigned int pref_erase; unsigned int erase_size; int eg_boundary; struct mmc_host* host; } ;


 unsigned int MMC_ERASE_TIMEOUT_MS ;
 unsigned int UINT_MAX ;
 scalar_t__ mmc_card_sd (struct mmc_card*) ;
 unsigned int mmc_erase_timeout (struct mmc_card*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int mmc_do_calc_max_discard(struct mmc_card *card,
         unsigned int arg)
{
 struct mmc_host *host = card->host;
 unsigned int max_discard, x, y, qty = 0, max_qty, min_qty, timeout;
 unsigned int last_timeout = 0;
 unsigned int max_busy_timeout = host->max_busy_timeout ?
   host->max_busy_timeout : MMC_ERASE_TIMEOUT_MS;

 if (card->erase_shift) {
  max_qty = UINT_MAX >> card->erase_shift;
  min_qty = card->pref_erase >> card->erase_shift;
 } else if (mmc_card_sd(card)) {
  max_qty = UINT_MAX;
  min_qty = card->pref_erase;
 } else {
  max_qty = UINT_MAX / card->erase_size;
  min_qty = card->pref_erase / card->erase_size;
 }
 do {
  y = 0;
  for (x = 1; x && x <= max_qty && max_qty - x >= qty; x <<= 1) {
   timeout = mmc_erase_timeout(card, arg, qty + x);

   if (qty + x > min_qty && timeout > max_busy_timeout)
    break;

   if (timeout < last_timeout)
    break;
   last_timeout = timeout;
   y = x;
  }
  qty += y;
 } while (y);

 if (!qty)
  return 0;
 if (qty == 1)
  card->eg_boundary = 1;
 else
  qty--;


 if (card->erase_shift)
  max_discard = qty << card->erase_shift;
 else if (mmc_card_sd(card))
  max_discard = qty + 1;
 else
  max_discard = qty * card->erase_size;

 return max_discard;
}
