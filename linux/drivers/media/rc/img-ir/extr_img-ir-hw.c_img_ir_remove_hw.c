
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct img_ir_priv_hw {int clk_nb; struct rc_dev* rdev; } ;
struct img_ir_priv {int clk; struct img_ir_priv_hw hw; } ;


 int IS_ERR (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 int img_ir_set_decoder (struct img_ir_priv*,int *,int ) ;
 int rc_unregister_device (struct rc_dev*) ;

void img_ir_remove_hw(struct img_ir_priv *priv)
{
 struct img_ir_priv_hw *hw = &priv->hw;
 struct rc_dev *rdev = hw->rdev;
 if (!rdev)
  return;
 img_ir_set_decoder(priv, ((void*)0), 0);
 hw->rdev = ((void*)0);
 rc_unregister_device(rdev);




}
