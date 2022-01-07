
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_priv {int dummy; } ;
struct img_ir_decoder {int type; } ;


 scalar_t__ img_ir_decoder_compatible (struct img_ir_priv*,struct img_ir_decoder const*) ;
 struct img_ir_decoder** img_ir_decoders ;

__attribute__((used)) static u64 img_ir_allowed_protos(struct img_ir_priv *priv)
{
 u64 protos = 0;
 struct img_ir_decoder **decp;

 for (decp = img_ir_decoders; *decp; ++decp) {
  const struct img_ir_decoder *dec = *decp;
  if (img_ir_decoder_compatible(priv, dec))
   protos |= dec->type;
 }
 return protos;
}
