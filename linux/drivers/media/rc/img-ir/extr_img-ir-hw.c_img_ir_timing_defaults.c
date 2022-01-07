
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_timing_range {scalar_t__ max; scalar_t__ min; } ;



__attribute__((used)) static void img_ir_timing_defaults(struct img_ir_timing_range *range,
       struct img_ir_timing_range *defaults)
{
 if (!range->min)
  range->min = defaults->min;
 if (!range->max)
  range->max = defaults->max;
}
