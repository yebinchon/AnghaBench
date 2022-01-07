
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_best_performance (struct mmc_test_card*,int,int) ;

__attribute__((used)) static int mmc_test_best_write_perf_max_scatter(struct mmc_test_card *test)
{
 return mmc_test_best_performance(test, 1, 1);
}
