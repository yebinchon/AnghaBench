
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_large_seq_perf (struct mmc_test_card*,int) ;

__attribute__((used)) static int mmc_test_large_seq_write_perf(struct mmc_test_card *test)
{
 return mmc_test_large_seq_perf(test, 1);
}
