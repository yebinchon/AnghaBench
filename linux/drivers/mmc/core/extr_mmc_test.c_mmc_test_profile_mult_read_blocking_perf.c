
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_multiple_rw {unsigned int* bs; int do_write; int do_nonblock_req; int prepare; int len; int size; } ;
struct mmc_test_card {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int MMC_TEST_PREP_NONE ;
 int TEST_AREA_MAX_SIZE ;
 int mmc_test_rw_multiple_size (struct mmc_test_card*,struct mmc_test_multiple_rw*) ;

__attribute__((used)) static int mmc_test_profile_mult_read_blocking_perf(struct mmc_test_card *test)
{
 unsigned int bs[] = {1 << 12, 1 << 13, 1 << 14, 1 << 15, 1 << 16,
        1 << 17, 1 << 18, 1 << 19, 1 << 20, 1 << 22};
 struct mmc_test_multiple_rw test_data = {
  .bs = bs,
  .size = TEST_AREA_MAX_SIZE,
  .len = ARRAY_SIZE(bs),
  .do_write = 0,
  .do_nonblock_req = 0,
  .prepare = MMC_TEST_PREP_NONE,
 };

 return mmc_test_rw_multiple_size(test, &test_data);
}
