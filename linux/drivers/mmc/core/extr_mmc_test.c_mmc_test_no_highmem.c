
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_card {TYPE_1__* card; } ;
struct TYPE_2__ {int host; } ;


 int mmc_hostname (int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int mmc_test_no_highmem(struct mmc_test_card *test)
{
 pr_info("%s: Highmem not configured - test skipped\n",
        mmc_hostname(test->card->host));
 return 0;
}
