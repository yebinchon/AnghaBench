
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_timing_range {unsigned int max; unsigned int min; } ;



__attribute__((used)) static void img_ir_timing_preprocess(struct img_ir_timing_range *range,
         unsigned int unit)
{
 if (range->max < range->min)
  range->max = range->min;
 if (unit) {

  range->min = (range->min*unit)/1000;
  range->max = (range->max*unit + 999)/1000;
 }
}
