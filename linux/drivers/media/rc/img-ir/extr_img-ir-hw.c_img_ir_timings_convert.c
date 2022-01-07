
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_timings {int ft; int s11; int s10; int s01; int s00; int ldr; } ;
struct img_ir_timing_regvals {int ft; void* s11; void* s10; void* s01; void* s00; void* ldr; } ;


 int img_ir_free_timing (int *,unsigned int) ;
 void* img_ir_symbol_timing (int *,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static void img_ir_timings_convert(struct img_ir_timing_regvals *regs,
       const struct img_ir_timings *timings,
       unsigned int tolerance,
       unsigned int clock_hz)
{

 regs->ldr = img_ir_symbol_timing(&timings->ldr, tolerance, clock_hz,
   4, 4);

 regs->s00 = img_ir_symbol_timing(&timings->s00, tolerance, clock_hz,
   1, 0);
 regs->s01 = img_ir_symbol_timing(&timings->s01, tolerance, clock_hz,
   1, 0);
 regs->s10 = img_ir_symbol_timing(&timings->s10, tolerance, clock_hz,
   1, 0);
 regs->s11 = img_ir_symbol_timing(&timings->s11, tolerance, clock_hz,
   1, 0);
 regs->ft = img_ir_free_timing(&timings->ft, clock_hz);
}
