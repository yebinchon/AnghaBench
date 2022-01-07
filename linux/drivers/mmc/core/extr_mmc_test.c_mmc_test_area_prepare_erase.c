
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_area_init (struct mmc_test_card*,int,int ) ;

__attribute__((used)) static int mmc_test_area_prepare_erase(struct mmc_test_card *test)
{
 return mmc_test_area_init(test, 1, 0);
}
