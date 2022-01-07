
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_reg_timings {int rtimings; int timings; int ctrl; } ;
struct img_ir_decoder {int tolerance; int rtimings; scalar_t__ repeat; int timings; int control; } ;


 int img_ir_control (int *) ;
 int img_ir_timings_convert (int *,int *,int ,unsigned int) ;

__attribute__((used)) static void img_ir_decoder_convert(const struct img_ir_decoder *decoder,
       struct img_ir_reg_timings *reg_timings,
       unsigned int clock_hz)
{

 reg_timings->ctrl = img_ir_control(&decoder->control);


 img_ir_timings_convert(&reg_timings->timings, &decoder->timings,
          decoder->tolerance, clock_hz);


 if (decoder->repeat)
  img_ir_timings_convert(&reg_timings->rtimings,
           &decoder->rtimings, decoder->tolerance,
           clock_hz);
}
