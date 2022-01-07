
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct mmc_test_area {unsigned long max_seg_sz; unsigned long max_segs; int blocks; int sg_len; int sg; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 unsigned long PAGE_SIZE ;
 int ktime_get_ts64 (struct timespec64*) ;
 int mmc_test_area_map (struct mmc_test_card*,unsigned long,int,int) ;
 int mmc_test_area_transfer (struct mmc_test_card*,unsigned int,int) ;
 int mmc_test_nonblock_transfer (struct mmc_test_card*,int ,int ,unsigned int,int ,int,int,int) ;
 int mmc_test_print_avg_rate (struct mmc_test_card*,unsigned long,int,struct timespec64*,struct timespec64*) ;

__attribute__((used)) static int mmc_test_area_io_seq(struct mmc_test_card *test, unsigned long sz,
    unsigned int dev_addr, int write,
    int max_scatter, int timed, int count,
    bool nonblock, int min_sg_len)
{
 struct timespec64 ts1, ts2;
 int ret = 0;
 int i;
 struct mmc_test_area *t = &test->area;





 if (max_scatter) {
  struct mmc_test_area *t = &test->area;
  unsigned long max_tfr;

  if (t->max_seg_sz >= PAGE_SIZE)
   max_tfr = t->max_segs * PAGE_SIZE;
  else
   max_tfr = t->max_segs * t->max_seg_sz;
  if (sz > max_tfr)
   sz = max_tfr;
 }

 ret = mmc_test_area_map(test, sz, max_scatter, min_sg_len);
 if (ret)
  return ret;

 if (timed)
  ktime_get_ts64(&ts1);
 if (nonblock)
  ret = mmc_test_nonblock_transfer(test, t->sg, t->sg_len,
     dev_addr, t->blocks, 512, write, count);
 else
  for (i = 0; i < count && ret == 0; i++) {
   ret = mmc_test_area_transfer(test, dev_addr, write);
   dev_addr += sz >> 9;
  }

 if (ret)
  return ret;

 if (timed)
  ktime_get_ts64(&ts2);

 if (timed)
  mmc_test_print_avg_rate(test, sz, count, &ts1, &ts2);

 return 0;
}
