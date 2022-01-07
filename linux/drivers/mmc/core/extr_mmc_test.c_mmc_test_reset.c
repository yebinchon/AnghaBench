
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_card {struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmdq_en; } ;
struct mmc_card {TYPE_1__ ext_csd; struct mmc_host* host; } ;


 int EOPNOTSUPP ;
 int RESULT_FAIL ;
 int RESULT_OK ;
 int RESULT_UNSUP_HOST ;
 int mmc_cmdq_disable (struct mmc_card*) ;
 int mmc_hw_reset (struct mmc_host*) ;

__attribute__((used)) static int mmc_test_reset(struct mmc_test_card *test)
{
 struct mmc_card *card = test->card;
 struct mmc_host *host = card->host;
 int err;

 err = mmc_hw_reset(host);
 if (!err) {




  if (card->ext_csd.cmdq_en)
   mmc_cmdq_disable(card);
  return RESULT_OK;
 } else if (err == -EOPNOTSUPP) {
  return RESULT_UNSUP_HOST;
 }

 return RESULT_FAIL;
}
