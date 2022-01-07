
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {unsigned long max_tfr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int mmc_test_rnd_perf (struct mmc_test_card*,int,int,unsigned long) ;
 unsigned int rnd_next ;

__attribute__((used)) static int mmc_test_random_perf(struct mmc_test_card *test, int write)
{
 struct mmc_test_area *t = &test->area;
 unsigned int next;
 unsigned long sz;
 int ret;

 for (sz = 512; sz < t->max_tfr; sz <<= 1) {





  if (write) {
   next = rnd_next;
   ret = mmc_test_rnd_perf(test, write, 0, sz);
   if (ret)
    return ret;
   rnd_next = next;
  }
  ret = mmc_test_rnd_perf(test, write, 1, sz);
  if (ret)
   return ret;
 }
 sz = t->max_tfr;
 if (write) {
  next = rnd_next;
  ret = mmc_test_rnd_perf(test, write, 0, sz);
  if (ret)
   return ret;
  rnd_next = next;
 }
 return mmc_test_rnd_perf(test, write, 1, sz);
}
