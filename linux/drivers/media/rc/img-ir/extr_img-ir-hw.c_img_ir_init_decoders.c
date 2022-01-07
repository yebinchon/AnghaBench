
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_decoder {int dummy; } ;


 int img_ir_decoder_preprocess (struct img_ir_decoder*) ;
 struct img_ir_decoder** img_ir_decoders ;
 int img_ir_decoders_lock ;
 int img_ir_decoders_preprocessed ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void img_ir_init_decoders(void)
{
 struct img_ir_decoder **decp;

 spin_lock(&img_ir_decoders_lock);
 if (!img_ir_decoders_preprocessed) {
  for (decp = img_ir_decoders; *decp; ++decp)
   img_ir_decoder_preprocess(*decp);
  img_ir_decoders_preprocessed = 1;
 }
 spin_unlock(&img_ir_decoders_lock);
}
