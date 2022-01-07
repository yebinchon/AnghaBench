
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct mmc_test_area {unsigned long max_sz; unsigned int dev_addr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int ktime_get_ts64 (struct timespec64*) ;
 int mmc_test_area_io (struct mmc_test_card*,unsigned long,unsigned int,int ,int ,int ) ;
 int mmc_test_print_avg_rate (struct mmc_test_card*,unsigned long,unsigned int,struct timespec64*,struct timespec64*) ;

__attribute__((used)) static int mmc_test_seq_read_perf(struct mmc_test_card *test, unsigned long sz)
{
 struct mmc_test_area *t = &test->area;
 unsigned int dev_addr, i, cnt;
 struct timespec64 ts1, ts2;
 int ret;

 cnt = t->max_sz / sz;
 dev_addr = t->dev_addr;
 ktime_get_ts64(&ts1);
 for (i = 0; i < cnt; i++) {
  ret = mmc_test_area_io(test, sz, dev_addr, 0, 0, 0);
  if (ret)
   return ret;
  dev_addr += (sz >> 9);
 }
 ktime_get_ts64(&ts2);
 mmc_test_print_avg_rate(test, sz, cnt, &ts1, &ts2);
 return 0;
}
