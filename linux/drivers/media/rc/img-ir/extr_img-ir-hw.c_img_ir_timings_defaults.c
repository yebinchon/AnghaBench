
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ft_min; } ;
struct img_ir_timings {TYPE_1__ ft; int s11; int s10; int s01; int s00; int ldr; } ;


 int img_ir_symbol_timing_defaults (int *,int *) ;

__attribute__((used)) static void img_ir_timings_defaults(struct img_ir_timings *timings,
        struct img_ir_timings *defaults)
{
 img_ir_symbol_timing_defaults(&timings->ldr, &defaults->ldr);
 img_ir_symbol_timing_defaults(&timings->s00, &defaults->s00);
 img_ir_symbol_timing_defaults(&timings->s01, &defaults->s01);
 img_ir_symbol_timing_defaults(&timings->s10, &defaults->s10);
 img_ir_symbol_timing_defaults(&timings->s11, &defaults->s11);
 if (!timings->ft.ft_min)
  timings->ft.ft_min = defaults->ft.ft_min;
}
