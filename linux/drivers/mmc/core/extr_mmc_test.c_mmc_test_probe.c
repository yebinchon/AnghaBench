
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmdq_en; } ;
struct mmc_card {int dev; int host; TYPE_1__ ext_csd; } ;


 int ENODEV ;
 int dev_info (int *,char*) ;
 int mmc_card_mmc (struct mmc_card*) ;
 int mmc_card_sd (struct mmc_card*) ;
 int mmc_claim_host (int ) ;
 int mmc_cmdq_disable (struct mmc_card*) ;
 int mmc_release_host (int ) ;
 int mmc_test_register_dbgfs_file (struct mmc_card*) ;

__attribute__((used)) static int mmc_test_probe(struct mmc_card *card)
{
 int ret;

 if (!mmc_card_mmc(card) && !mmc_card_sd(card))
  return -ENODEV;

 ret = mmc_test_register_dbgfs_file(card);
 if (ret)
  return ret;

 if (card->ext_csd.cmdq_en) {
  mmc_claim_host(card->host);
  ret = mmc_cmdq_disable(card);
  mmc_release_host(card->host);
  if (ret)
   return ret;
 }

 dev_info(&card->dev, "Card claimed for testing.\n");

 return 0;
}
