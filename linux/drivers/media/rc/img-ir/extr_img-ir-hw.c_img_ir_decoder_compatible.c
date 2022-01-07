
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* ct_quirks; } ;
struct img_ir_priv {TYPE_2__ hw; } ;
struct TYPE_3__ {unsigned int code_type; } ;
struct img_ir_decoder {TYPE_1__ control; } ;


 int IMG_IR_QUIRK_CODE_BROKEN ;

__attribute__((used)) static bool img_ir_decoder_compatible(struct img_ir_priv *priv,
          const struct img_ir_decoder *dec)
{
 unsigned int ct;


 ct = dec->control.code_type;
 if (priv->hw.ct_quirks[ct] & IMG_IR_QUIRK_CODE_BROKEN)
  return 0;

 return 1;
}
