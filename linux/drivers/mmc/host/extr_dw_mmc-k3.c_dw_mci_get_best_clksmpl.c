
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ffs (unsigned int) ;
 unsigned int ror32 (unsigned int,int) ;

__attribute__((used)) static int dw_mci_get_best_clksmpl(unsigned int sample_flag)
{
 int i;
 int interval;
 unsigned int v;
 unsigned int len;
 unsigned int range_start = 0;
 unsigned int range_length = 0;
 unsigned int middle_range = 0;

 if (!sample_flag)
  return -EIO;

 if (~sample_flag == 0)
  return 0;

 i = ffs(sample_flag) - 1;






 while (i < 32) {
  v = ror32(sample_flag, i);
  len = ffs(~v) - 1;

  if (len > range_length) {
   range_length = len;
   range_start = i;
  }

  interval = ffs(v >> len) - 1;
  if (interval < 0)
   break;

  i += len + interval;
 }

 middle_range = range_start + range_length / 2;
 if (middle_range >= 32)
  middle_range %= 32;

 return middle_range;
}
