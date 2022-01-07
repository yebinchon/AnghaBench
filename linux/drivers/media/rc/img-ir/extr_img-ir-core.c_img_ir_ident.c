
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_ir_priv {int raw; int hw; int dev; } ;


 int IMG_IR_CORE_REV ;
 int IMG_IR_DESIGNER ;
 int IMG_IR_DESIGNER_SHIFT ;
 int IMG_IR_MAINT_REV ;
 int IMG_IR_MAINT_REV_SHIFT ;
 int IMG_IR_MAJOR_REV ;
 int IMG_IR_MAJOR_REV_SHIFT ;
 int IMG_IR_MINOR_REV ;
 int IMG_IR_MINOR_REV_SHIFT ;
 int dev_info (int ,char*,...) ;
 scalar_t__ img_ir_hw_enabled (int *) ;
 scalar_t__ img_ir_raw_enabled (int *) ;
 int img_ir_read (struct img_ir_priv*,int ) ;

__attribute__((used)) static void img_ir_ident(struct img_ir_priv *priv)
{
 u32 core_rev = img_ir_read(priv, IMG_IR_CORE_REV);

 dev_info(priv->dev,
   "IMG IR Decoder (%d.%d.%d.%d) probed successfully\n",
   (core_rev & IMG_IR_DESIGNER) >> IMG_IR_DESIGNER_SHIFT,
   (core_rev & IMG_IR_MAJOR_REV) >> IMG_IR_MAJOR_REV_SHIFT,
   (core_rev & IMG_IR_MINOR_REV) >> IMG_IR_MINOR_REV_SHIFT,
   (core_rev & IMG_IR_MAINT_REV) >> IMG_IR_MAINT_REV_SHIFT);
 dev_info(priv->dev, "Modes:%s%s\n",
   img_ir_hw_enabled(&priv->hw) ? " hardware" : "",
   img_ir_raw_enabled(&priv->raw) ? " raw" : "");
}
