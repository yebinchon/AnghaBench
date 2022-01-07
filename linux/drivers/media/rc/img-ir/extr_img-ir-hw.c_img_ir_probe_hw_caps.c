
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv_hw {int * ct_quirks; } ;
struct img_ir_priv {struct img_ir_priv_hw hw; } ;


 size_t IMG_IR_CODETYPE_2BITPULSEPOS ;
 size_t IMG_IR_CODETYPE_BIPHASE ;
 size_t IMG_IR_CODETYPE_PULSELEN ;
 int IMG_IR_QUIRK_CODE_BROKEN ;
 int IMG_IR_QUIRK_CODE_IRQ ;
 int IMG_IR_QUIRK_CODE_LEN_INCR ;

__attribute__((used)) static void img_ir_probe_hw_caps(struct img_ir_priv *priv)
{
 struct img_ir_priv_hw *hw = &priv->hw;




 hw->ct_quirks[IMG_IR_CODETYPE_PULSELEN]
  |= IMG_IR_QUIRK_CODE_LEN_INCR;
 hw->ct_quirks[IMG_IR_CODETYPE_BIPHASE]
  |= IMG_IR_QUIRK_CODE_IRQ;
 hw->ct_quirks[IMG_IR_CODETYPE_2BITPULSEPOS]
  |= IMG_IR_QUIRK_CODE_BROKEN;
}
