
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int erase_timeout; unsigned int erase_offset; } ;
struct mmc_card {TYPE_1__ ssr; } ;


 unsigned int SD_DISCARD_ARG ;
 unsigned int SD_DISCARD_TIMEOUT_MS ;

__attribute__((used)) static unsigned int mmc_sd_erase_timeout(struct mmc_card *card,
      unsigned int arg,
      unsigned int qty)
{
 unsigned int erase_timeout;




 if (arg == SD_DISCARD_ARG)
  return SD_DISCARD_TIMEOUT_MS;

 if (card->ssr.erase_timeout) {

  erase_timeout = card->ssr.erase_timeout * qty +
    card->ssr.erase_offset;
 } else {




  erase_timeout = 250 * qty;
 }


 if (erase_timeout < 1000)
  erase_timeout = 1000;

 return erase_timeout;
}
