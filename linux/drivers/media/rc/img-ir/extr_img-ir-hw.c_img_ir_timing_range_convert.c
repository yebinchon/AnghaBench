
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_timing_range {unsigned int min; unsigned int max; } ;



__attribute__((used)) static void img_ir_timing_range_convert(struct img_ir_timing_range *out,
     const struct img_ir_timing_range *in,
     unsigned int tolerance,
     unsigned long clock_hz,
     unsigned int shift)
{
 unsigned int min = in->min;
 unsigned int max = in->max;

 min = min - (min*tolerance >> 7);
 max = max + (max*tolerance >> 7);

 min = min*clock_hz / 1000000;
 max = (max*clock_hz + 999999) / 1000000;

 out->min = min >> shift;
 out->max = (max + ((1 << shift) - 1)) >> shift;
}
