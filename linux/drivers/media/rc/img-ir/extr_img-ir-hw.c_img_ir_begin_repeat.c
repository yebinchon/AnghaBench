
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; int rtimings; } ;
struct img_ir_priv_hw {scalar_t__ mode; TYPE_1__ reg_timings; } ;
struct img_ir_priv {struct img_ir_priv_hw hw; } ;


 int IMG_IR_CONTROL ;
 scalar_t__ IMG_IR_M_NORMAL ;
 scalar_t__ IMG_IR_M_REPEATING ;
 int RC_FILTER_NORMAL ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;
 int img_ir_write_timings (struct img_ir_priv*,int *,int ) ;

__attribute__((used)) static void img_ir_begin_repeat(struct img_ir_priv *priv)
{
 struct img_ir_priv_hw *hw = &priv->hw;
 if (hw->mode == IMG_IR_M_NORMAL) {

  img_ir_write(priv, IMG_IR_CONTROL, 0);
  hw->mode = IMG_IR_M_REPEATING;
  img_ir_write_timings(priv, &hw->reg_timings.rtimings,
         RC_FILTER_NORMAL);
  img_ir_write(priv, IMG_IR_CONTROL, hw->reg_timings.ctrl);
 }
}
