
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ft_min; } ;
struct img_ir_timings {TYPE_1__ ft; int s11; int s10; int s01; int s00; int ldr; } ;


 int img_ir_symbol_timing_preprocess (int *,unsigned int) ;

__attribute__((used)) static void img_ir_timings_preprocess(struct img_ir_timings *timings,
          unsigned int unit)
{
 img_ir_symbol_timing_preprocess(&timings->ldr, unit);
 img_ir_symbol_timing_preprocess(&timings->s00, unit);
 img_ir_symbol_timing_preprocess(&timings->s01, unit);
 img_ir_symbol_timing_preprocess(&timings->s10, unit);
 img_ir_symbol_timing_preprocess(&timings->s11, unit);

 if (unit)

  timings->ft.ft_min = (timings->ft.ft_min*unit + 999)/1000;
}
