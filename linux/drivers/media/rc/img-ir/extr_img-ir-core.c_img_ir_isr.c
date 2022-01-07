
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_ir_priv {int lock; int hw; int raw; } ;
typedef int irqreturn_t ;


 int IMG_IR_IRQ_CLEAR ;
 int IMG_IR_IRQ_DATA2_VALID ;
 int IMG_IR_IRQ_DATA_MATCH ;
 int IMG_IR_IRQ_DATA_VALID ;
 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRQ_ENABLE ;
 int IMG_IR_IRQ_STATUS ;
 int IRQ_HANDLED ;
 scalar_t__ img_ir_hw_enabled (int *) ;
 int img_ir_isr_hw (struct img_ir_priv*,int) ;
 int img_ir_isr_raw (struct img_ir_priv*,int) ;
 scalar_t__ img_ir_raw_enabled (int *) ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int img_ir_write (struct img_ir_priv*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t img_ir_isr(int irq, void *dev_id)
{
 struct img_ir_priv *priv = dev_id;
 u32 irq_status;

 spin_lock(&priv->lock);

 irq_status = img_ir_read(priv, IMG_IR_IRQ_STATUS);
 img_ir_write(priv, IMG_IR_IRQ_CLEAR, irq_status);


 irq_status &= img_ir_read(priv, IMG_IR_IRQ_ENABLE);


 if (irq_status & IMG_IR_IRQ_EDGE && img_ir_raw_enabled(&priv->raw))
  img_ir_isr_raw(priv, irq_status);


 if (irq_status & (IMG_IR_IRQ_DATA_MATCH |
     IMG_IR_IRQ_DATA_VALID |
     IMG_IR_IRQ_DATA2_VALID) &&
     img_ir_hw_enabled(&priv->hw))
  img_ir_isr_hw(priv, irq_status);

 spin_unlock(&priv->lock);
 return IRQ_HANDLED;
}
