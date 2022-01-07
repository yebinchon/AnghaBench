
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_multiple_rw {unsigned int* sg_len; int do_write; int do_nonblock_req; int prepare; int len; int size; } ;
struct mmc_test_card {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int MMC_TEST_PREP_ERASE ;
 int TEST_AREA_MAX_SIZE ;
 int mmc_test_rw_multiple_sg_len (struct mmc_test_card*,struct mmc_test_multiple_rw*) ;

__attribute__((used)) static int mmc_test_profile_sglen_wr_nonblock_perf(struct mmc_test_card *test)
{
 unsigned int sg_len[] = {1, 1 << 3, 1 << 4, 1 << 5, 1 << 6,
     1 << 7, 1 << 8, 1 << 9};
 struct mmc_test_multiple_rw test_data = {
  .sg_len = sg_len,
  .size = TEST_AREA_MAX_SIZE,
  .len = ARRAY_SIZE(sg_len),
  .do_write = 1,
  .do_nonblock_req = 1,
  .prepare = MMC_TEST_PREP_ERASE,
 };

 return mmc_test_rw_multiple_sg_len(test, &test_data);
}
