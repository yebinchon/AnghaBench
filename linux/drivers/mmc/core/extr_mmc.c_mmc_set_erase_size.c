
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int erase_size; } ;
struct TYPE_3__ {int erase_group_def; int hc_erase_size; } ;
struct mmc_card {TYPE_2__ csd; int erase_size; TYPE_1__ ext_csd; } ;


 int mmc_init_erase (struct mmc_card*) ;

__attribute__((used)) static void mmc_set_erase_size(struct mmc_card *card)
{
 if (card->ext_csd.erase_group_def & 1)
  card->erase_size = card->ext_csd.hc_erase_size;
 else
  card->erase_size = card->csd.erase_size;

 mmc_init_erase(card);
}
