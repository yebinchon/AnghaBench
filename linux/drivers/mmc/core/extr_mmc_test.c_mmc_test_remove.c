
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int host; scalar_t__ reenable_cmdq; } ;


 int mmc_claim_host (int ) ;
 int mmc_cmdq_enable (struct mmc_card*) ;
 int mmc_release_host (int ) ;
 int mmc_test_free_dbgfs_file (struct mmc_card*) ;
 int mmc_test_free_result (struct mmc_card*) ;

__attribute__((used)) static void mmc_test_remove(struct mmc_card *card)
{
 if (card->reenable_cmdq) {
  mmc_claim_host(card->host);
  mmc_cmdq_enable(card);
  mmc_release_host(card->host);
 }
 mmc_test_free_result(card);
 mmc_test_free_dbgfs_file(card);
}
