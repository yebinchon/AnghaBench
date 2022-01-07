
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_seq_perf (struct mmc_test_card*,int,int,int) ;

__attribute__((used)) static int mmc_test_large_seq_perf(struct mmc_test_card *test, int write)
{
 int ret, i;

 for (i = 0; i < 10; i++) {
  ret = mmc_test_seq_perf(test, write, 10 * 1024 * 1024, 1);
  if (ret)
   return ret;
 }
 for (i = 0; i < 5; i++) {
  ret = mmc_test_seq_perf(test, write, 100 * 1024 * 1024, 1);
  if (ret)
   return ret;
 }
 for (i = 0; i < 3; i++) {
  ret = mmc_test_seq_perf(test, write, 1000 * 1024 * 1024, 1);
  if (ret)
   return ret;
 }

 return ret;
}
