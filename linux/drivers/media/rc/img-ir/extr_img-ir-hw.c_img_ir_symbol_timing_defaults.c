
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_symbol_timing {int space; int pulse; } ;


 int img_ir_timing_defaults (int *,int *) ;

__attribute__((used)) static void img_ir_symbol_timing_defaults(struct img_ir_symbol_timing *timing,
       struct img_ir_symbol_timing *defaults)
{
 img_ir_timing_defaults(&timing->pulse, &defaults->pulse);
 img_ir_timing_defaults(&timing->space, &defaults->space);
}
