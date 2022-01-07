
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {void* raw_exception_status; void* raw_bkops_status; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 size_t EXT_CSD_BKOPS_STATUS ;
 size_t EXT_CSD_EXP_EVENTS_STATUS ;
 int kfree (void**) ;
 int mmc_get_ext_csd (struct mmc_card*,void***) ;

__attribute__((used)) static int mmc_read_bkops_status(struct mmc_card *card)
{
 int err;
 u8 *ext_csd;

 err = mmc_get_ext_csd(card, &ext_csd);
 if (err)
  return err;

 card->ext_csd.raw_bkops_status = ext_csd[EXT_CSD_BKOPS_STATUS];
 card->ext_csd.raw_exception_status = ext_csd[EXT_CSD_EXP_EVENTS_STATUS];
 kfree(ext_csd);
 return 0;
}
