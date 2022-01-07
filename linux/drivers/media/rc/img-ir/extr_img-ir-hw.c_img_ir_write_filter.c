
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_ir_priv {int dev; } ;
struct img_ir_filter {int data; int mask; } ;


 int IMG_IR_IRQ_MSG_DATA_LW ;
 int IMG_IR_IRQ_MSG_DATA_UP ;
 int IMG_IR_IRQ_MSG_MASK_LW ;
 int IMG_IR_IRQ_MSG_MASK_UP ;
 int dev_dbg (int ,char*,...) ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;

__attribute__((used)) static void img_ir_write_filter(struct img_ir_priv *priv,
    struct img_ir_filter *filter)
{
 if (filter) {
  dev_dbg(priv->dev, "IR filter=%016llx & %016llx\n",
   (unsigned long long)filter->data,
   (unsigned long long)filter->mask);
  img_ir_write(priv, IMG_IR_IRQ_MSG_DATA_LW, (u32)filter->data);
  img_ir_write(priv, IMG_IR_IRQ_MSG_DATA_UP, (u32)(filter->data
         >> 32));
  img_ir_write(priv, IMG_IR_IRQ_MSG_MASK_LW, (u32)filter->mask);
  img_ir_write(priv, IMG_IR_IRQ_MSG_MASK_UP, (u32)(filter->mask
         >> 32));
 } else {
  dev_dbg(priv->dev, "IR clearing filter\n");
  img_ir_write(priv, IMG_IR_IRQ_MSG_MASK_LW, 0);
  img_ir_write(priv, IMG_IR_IRQ_MSG_MASK_UP, 0);
 }
}
