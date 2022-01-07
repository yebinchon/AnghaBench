
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {unsigned long max; int total; int count; } ;


 unsigned long atomic_long_read (int *) ;
 TYPE_1__* mcs_op_statistics ;
 int mcsop_last ;
 int seq_printf (struct seq_file*,char*,char*,...) ;

__attribute__((used)) static int mcs_statistics_show(struct seq_file *s, void *p)
{
 int op;
 unsigned long total, count, max;
 static char *id[] = {"cch_allocate", "cch_start", "cch_interrupt",
  "cch_interrupt_sync", "cch_deallocate", "tfh_write_only",
  "tfh_write_restart", "tgh_invalidate"};

 seq_printf(s, "%-20s%12s%12s%12s\n", "#id", "count", "aver-clks", "max-clks");
 for (op = 0; op < mcsop_last; op++) {
  count = atomic_long_read(&mcs_op_statistics[op].count);
  total = atomic_long_read(&mcs_op_statistics[op].total);
  max = mcs_op_statistics[op].max;
  seq_printf(s, "%-20s%12ld%12ld%12ld\n", id[op], count,
      count ? total / count : 0, max);
 }
 return 0;
}
