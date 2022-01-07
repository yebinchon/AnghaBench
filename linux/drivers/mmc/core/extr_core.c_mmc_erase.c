
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sec_feature_support; } ;
struct TYPE_5__ {int cmdclass; } ;
struct mmc_card {unsigned int erase_size; scalar_t__ eg_boundary; TYPE_3__ ext_csd; TYPE_2__ csd; TYPE_1__* host; } ;
struct TYPE_4__ {int caps; } ;


 int CCC_ERASE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT_CSD_SEC_ER_EN ;
 int EXT_CSD_SEC_GB_CL_EN ;
 int MMC_CAP_ERASE ;
 unsigned int MMC_ERASE_ARG ;
 unsigned int MMC_SECURE_ARGS ;
 unsigned int MMC_SECURE_ERASE_ARG ;
 unsigned int MMC_TRIM_ARGS ;
 unsigned int SD_DISCARD_ARG ;
 unsigned int SD_ERASE_ARG ;
 unsigned int mmc_align_erase_size (struct mmc_card*,unsigned int*,unsigned int*,unsigned int) ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 scalar_t__ mmc_card_sd (struct mmc_card*) ;
 int mmc_do_erase (struct mmc_card*,unsigned int,unsigned int,unsigned int) ;

int mmc_erase(struct mmc_card *card, unsigned int from, unsigned int nr,
       unsigned int arg)
{
 unsigned int rem, to = from + nr;
 int err;

 if (!(card->host->caps & MMC_CAP_ERASE) ||
     !(card->csd.cmdclass & CCC_ERASE))
  return -EOPNOTSUPP;

 if (!card->erase_size)
  return -EOPNOTSUPP;

 if (mmc_card_sd(card) && arg != SD_ERASE_ARG && arg != SD_DISCARD_ARG)
  return -EOPNOTSUPP;

 if (mmc_card_mmc(card) && (arg & MMC_SECURE_ARGS) &&
     !(card->ext_csd.sec_feature_support & EXT_CSD_SEC_ER_EN))
  return -EOPNOTSUPP;

 if (mmc_card_mmc(card) && (arg & MMC_TRIM_ARGS) &&
     !(card->ext_csd.sec_feature_support & EXT_CSD_SEC_GB_CL_EN))
  return -EOPNOTSUPP;

 if (arg == MMC_SECURE_ERASE_ARG) {
  if (from % card->erase_size || nr % card->erase_size)
   return -EINVAL;
 }

 if (arg == MMC_ERASE_ARG)
  nr = mmc_align_erase_size(card, &from, &to, nr);

 if (nr == 0)
  return 0;

 if (to <= from)
  return -EINVAL;


 to -= 1;
 rem = card->erase_size - (from % card->erase_size);
 if ((arg & MMC_TRIM_ARGS) && (card->eg_boundary) && (nr > rem)) {
  err = mmc_do_erase(card, from, from + rem - 1, arg);
  from += rem;
  if ((err) || (to <= from))
   return err;
 }

 return mmc_do_erase(card, from, to, arg);
}
