
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_decoder {int tolerance; int timings; int rtimings; int unit; scalar_t__ repeat; } ;


 int img_ir_timings_defaults (int *,int *) ;
 int img_ir_timings_preprocess (int *,int ) ;

__attribute__((used)) static void img_ir_decoder_preprocess(struct img_ir_decoder *decoder)
{

 if (!decoder->tolerance)
  decoder->tolerance = 10;

 decoder->tolerance = decoder->tolerance * 128 / 100;


 img_ir_timings_preprocess(&decoder->timings, decoder->unit);


 if (decoder->repeat) {
  img_ir_timings_preprocess(&decoder->rtimings, decoder->unit);
  img_ir_timings_defaults(&decoder->rtimings, &decoder->timings);
 }
}
