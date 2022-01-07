
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rc_dev {int allowed_wakeup_protocols; struct img_ir_priv* priv; } ;
struct img_ir_priv_hw {TYPE_1__* decoder; struct rc_dev* rdev; } ;
struct img_ir_priv {struct img_ir_priv_hw hw; } ;
struct img_ir_decoder {int type; } ;
struct TYPE_2__ {int filter; } ;


 int EINVAL ;
 int img_ir_decoder_compatible (struct img_ir_priv*,struct img_ir_decoder const*) ;
 struct img_ir_decoder** img_ir_decoders ;
 int img_ir_set_decoder (struct img_ir_priv*,struct img_ir_decoder const*,int) ;

__attribute__((used)) static int img_ir_change_protocol(struct rc_dev *dev, u64 *ir_type)
{
 struct img_ir_priv *priv = dev->priv;
 struct img_ir_priv_hw *hw = &priv->hw;
 struct rc_dev *rdev = hw->rdev;
 struct img_ir_decoder **decp;
 u64 wakeup_protocols;

 if (!*ir_type) {

  img_ir_set_decoder(priv, ((void*)0), 0);
  goto success;
 }
 for (decp = img_ir_decoders; *decp; ++decp) {
  const struct img_ir_decoder *dec = *decp;
  if (!img_ir_decoder_compatible(priv, dec))
   continue;
  if (*ir_type & dec->type) {
   *ir_type &= dec->type;
   img_ir_set_decoder(priv, dec, *ir_type);
   goto success;
  }
 }
 return -EINVAL;

success:




 wakeup_protocols = *ir_type;
 if (!hw->decoder || !hw->decoder->filter)
  wakeup_protocols = 0;
 rdev->allowed_wakeup_protocols = wakeup_protocols;
 return 0;
}
