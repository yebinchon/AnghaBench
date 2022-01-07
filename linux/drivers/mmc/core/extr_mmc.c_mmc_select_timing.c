
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int mmc_avail_type; } ;


 int EBADMSG ;
 int EXT_CSD_CARD_TYPE_HS ;
 int EXT_CSD_CARD_TYPE_HS200 ;
 int EXT_CSD_CARD_TYPE_HS400ES ;
 int mmc_can_ext_csd (struct mmc_card*) ;
 int mmc_select_hs (struct mmc_card*) ;
 int mmc_select_hs200 (struct mmc_card*) ;
 int mmc_select_hs400es (struct mmc_card*) ;
 int mmc_set_bus_speed (struct mmc_card*) ;

__attribute__((used)) static int mmc_select_timing(struct mmc_card *card)
{
 int err = 0;

 if (!mmc_can_ext_csd(card))
  goto bus_speed;

 if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS400ES)
  err = mmc_select_hs400es(card);
 else if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS200)
  err = mmc_select_hs200(card);
 else if (card->mmc_avail_type & EXT_CSD_CARD_TYPE_HS)
  err = mmc_select_hs(card);

 if (err && err != -EBADMSG)
  return err;

bus_speed:




 mmc_set_bus_speed(card);
 return 0;
}
