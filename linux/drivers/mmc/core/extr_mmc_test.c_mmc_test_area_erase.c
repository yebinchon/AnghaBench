
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {int max_sz; int dev_addr; } ;
struct mmc_test_card {int card; struct mmc_test_area area; } ;


 int MMC_ERASE_ARG ;
 int mmc_can_erase (int ) ;
 int mmc_erase (int ,int ,int,int ) ;

__attribute__((used)) static int mmc_test_area_erase(struct mmc_test_card *test)
{
 struct mmc_test_area *t = &test->area;

 if (!mmc_can_erase(test->card))
  return 0;

 return mmc_erase(test->card, t->dev_addr, t->max_sz >> 9,
    MMC_ERASE_ARG);
}
