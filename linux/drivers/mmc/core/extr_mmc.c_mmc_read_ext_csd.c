
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int capacity; } ;
struct mmc_card {int host; TYPE_1__ csd; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOSYS ;
 int kfree (int *) ;
 int mmc_can_ext_csd (struct mmc_card*) ;
 int mmc_decode_ext_csd (struct mmc_card*,int *) ;
 int mmc_get_ext_csd (struct mmc_card*,int **) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int mmc_read_ext_csd(struct mmc_card *card)
{
 u8 *ext_csd;
 int err;

 if (!mmc_can_ext_csd(card))
  return 0;

 err = mmc_get_ext_csd(card, &ext_csd);
 if (err) {


  if ((err != -EINVAL)
   && (err != -ENOSYS)
   && (err != -EFAULT))
   return err;





  if (card->csd.capacity == (4096 * 512)) {
   pr_err("%s: unable to read EXT_CSD on a possible high capacity card. Card will be ignored.\n",
    mmc_hostname(card->host));
  } else {
   pr_warn("%s: unable to read EXT_CSD, performance might suffer\n",
    mmc_hostname(card->host));
   err = 0;
  }

  return err;
 }

 err = mmc_decode_ext_csd(card, ext_csd);
 kfree(ext_csd);
 return err;
}
