
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv {int clk; } ;


 int IMG_IR_IRQ_ENABLE ;
 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int img_ir_setup_hw (struct img_ir_priv*) ;
 int img_ir_setup_raw (struct img_ir_priv*) ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;

__attribute__((used)) static void img_ir_setup(struct img_ir_priv *priv)
{

 img_ir_write(priv, IMG_IR_IRQ_ENABLE, 0);

 img_ir_setup_raw(priv);
 img_ir_setup_hw(priv);

 if (!IS_ERR(priv->clk))
  clk_prepare_enable(priv->clk);
}
