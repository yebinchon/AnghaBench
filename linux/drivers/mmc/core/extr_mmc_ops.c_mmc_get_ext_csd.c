
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_card {int host; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int MMC_SEND_EXT_CSD ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int mmc_can_ext_csd (struct mmc_card*) ;
 int mmc_send_cxd_data (struct mmc_card*,int ,int ,int *,int) ;

int mmc_get_ext_csd(struct mmc_card *card, u8 **new_ext_csd)
{
 int err;
 u8 *ext_csd;

 if (!card || !new_ext_csd)
  return -EINVAL;

 if (!mmc_can_ext_csd(card))
  return -EOPNOTSUPP;





 ext_csd = kzalloc(512, GFP_KERNEL);
 if (!ext_csd)
  return -ENOMEM;

 err = mmc_send_cxd_data(card, card->host, MMC_SEND_EXT_CSD, ext_csd,
    512);
 if (err)
  kfree(ext_csd);
 else
  *new_ext_csd = ext_csd;

 return err;
}
