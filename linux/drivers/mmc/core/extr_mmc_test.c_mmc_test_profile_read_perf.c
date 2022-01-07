
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {unsigned long max_tfr; unsigned long dev_addr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int mmc_test_area_io (struct mmc_test_card*,unsigned long,unsigned int,int ,int ,int) ;

__attribute__((used)) static int mmc_test_profile_read_perf(struct mmc_test_card *test)
{
 struct mmc_test_area *t = &test->area;
 unsigned long sz;
 unsigned int dev_addr;
 int ret;

 for (sz = 512; sz < t->max_tfr; sz <<= 1) {
  dev_addr = t->dev_addr + (sz >> 9);
  ret = mmc_test_area_io(test, sz, dev_addr, 0, 0, 1);
  if (ret)
   return ret;
 }
 sz = t->max_tfr;
 dev_addr = t->dev_addr;
 return mmc_test_area_io(test, sz, dev_addr, 0, 0, 1);
}
