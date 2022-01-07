
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdev; } ;
struct img_ir_priv {TYPE_1__ hw; } ;
struct img_ir_decoder {int type; } ;


 scalar_t__ img_ir_decoder_compatible (struct img_ir_priv*,struct img_ir_decoder const*) ;
 struct img_ir_decoder** img_ir_decoders ;
 int img_ir_set_decoder (struct img_ir_priv*,struct img_ir_decoder const*,int ) ;
 int img_ir_set_protocol (struct img_ir_priv*,int ) ;

void img_ir_setup_hw(struct img_ir_priv *priv)
{
 struct img_ir_decoder **decp;

 if (!priv->hw.rdev)
  return;


 for (decp = img_ir_decoders; *decp; ++decp) {
  const struct img_ir_decoder *dec = *decp;
  if (img_ir_decoder_compatible(priv, dec)) {
   img_ir_set_protocol(priv, dec->type);
   img_ir_set_decoder(priv, dec, 0);
   return;
  }
 }
 img_ir_set_decoder(priv, ((void*)0), 0);
}
