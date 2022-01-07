
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_test_area {int dev_addr; } ;
struct mmc_test_card {TYPE_2__* card; struct mmc_test_area area; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int MMC_CAP_CMD_DURING_TFR ;
 int RESULT_UNSUP_HOST ;
 int mmc_test_area_map (struct mmc_test_card*,unsigned long,int ,int ) ;
 int mmc_test_ongoing_transfer (struct mmc_test_card*,int ,int,int,int,int) ;

__attribute__((used)) static int __mmc_test_cmds_during_tfr(struct mmc_test_card *test,
          unsigned long sz, int use_sbc, int write,
          int use_areq)
{
 struct mmc_test_area *t = &test->area;
 int ret;

 if (!(test->card->host->caps & MMC_CAP_CMD_DURING_TFR))
  return RESULT_UNSUP_HOST;

 ret = mmc_test_area_map(test, sz, 0, 0);
 if (ret)
  return ret;

 ret = mmc_test_ongoing_transfer(test, t->dev_addr, use_sbc, 0, write,
     use_areq);
 if (ret)
  return ret;

 return mmc_test_ongoing_transfer(test, t->dev_addr, use_sbc, 1, write,
      use_areq);
}
