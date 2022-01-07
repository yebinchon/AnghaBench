
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_symbol_timing {int space; int pulse; } ;


 int img_ir_timing_preprocess (int *,unsigned int) ;

__attribute__((used)) static void img_ir_symbol_timing_preprocess(struct img_ir_symbol_timing *timing,
         unsigned int unit)
{
 img_ir_timing_preprocess(&timing->pulse, unit);
 img_ir_timing_preprocess(&timing->space, unit);
}
