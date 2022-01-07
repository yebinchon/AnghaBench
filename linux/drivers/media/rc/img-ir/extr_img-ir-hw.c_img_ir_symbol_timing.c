
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct img_ir_timing_range {int min; int max; } ;
struct TYPE_2__ {int min; int max; } ;
struct img_ir_symbol_timing {struct img_ir_timing_range pulse; TYPE_1__ space; } ;


 int IMG_IR_PD_MAX_SHIFT ;
 int IMG_IR_PD_MIN_SHIFT ;
 int IMG_IR_W_MAX_SHIFT ;
 int IMG_IR_W_MIN_SHIFT ;
 int img_ir_timing_range_convert (struct img_ir_timing_range*,struct img_ir_timing_range*,unsigned int,unsigned long,unsigned int) ;

__attribute__((used)) static u32 img_ir_symbol_timing(const struct img_ir_symbol_timing *timing,
    unsigned int tolerance,
    unsigned long clock_hz,
    unsigned int pd_shift,
    unsigned int w_shift)
{
 struct img_ir_timing_range hw_pulse, hw_period;

 hw_period.min = timing->pulse.min + timing->space.min;
 hw_period.max = timing->pulse.max + timing->space.max;
 img_ir_timing_range_convert(&hw_period, &hw_period,
   tolerance, clock_hz, pd_shift);
 img_ir_timing_range_convert(&hw_pulse, &timing->pulse,
   tolerance, clock_hz, w_shift);

 return (hw_period.max << IMG_IR_PD_MAX_SHIFT) |
  (hw_period.min << IMG_IR_PD_MIN_SHIFT) |
  (hw_pulse.max << IMG_IR_W_MAX_SHIFT) |
  (hw_pulse.min << IMG_IR_W_MIN_SHIFT);
}
