
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv_hw {int flags; struct img_ir_filter* filters; } ;
struct img_ir_priv {struct img_ir_priv_hw hw; } ;
struct img_ir_filter {int dummy; } ;


 int IMG_IR_F_WAKE ;
 size_t RC_FILTER_WAKEUP ;

__attribute__((used)) static void _img_ir_set_wake_filter(struct img_ir_priv *priv,
        struct img_ir_filter *filter)
{
 struct img_ir_priv_hw *hw = &priv->hw;
 if (filter) {

  hw->filters[RC_FILTER_WAKEUP] = *filter;
  hw->flags |= IMG_IR_F_WAKE;
 } else {

  hw->flags &= ~IMG_IR_F_WAKE;
 }
}
