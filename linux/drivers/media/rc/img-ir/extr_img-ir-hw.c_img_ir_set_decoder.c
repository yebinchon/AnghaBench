
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ data; } ;
struct rc_dev {int wakeup_protocol; TYPE_1__ scancode_wakeup_filter; } ;
struct TYPE_4__ {int ctrl; int timings; } ;
struct img_ir_priv_hw {int stopping; TYPE_2__ reg_timings; int clk_hz; scalar_t__ enabled_protocols; struct img_ir_decoder const* decoder; int mode; int suspend_timer; int end_timer; struct rc_dev* rdev; } ;
struct img_ir_priv {int lock; struct img_ir_priv_hw hw; } ;
struct img_ir_decoder {scalar_t__ type; } ;


 int IMG_IR_CONTROL ;
 int IMG_IR_DATA_LW ;
 int IMG_IR_DATA_UP ;
 int IMG_IR_IRQ_ALL ;
 int IMG_IR_IRQ_CLEAR ;
 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRQ_ENABLE ;
 int IMG_IR_M_NORMAL ;
 int IMG_IR_RXDVAL ;
 int IMG_IR_RXDVALD2 ;
 int IMG_IR_STATUS ;
 int RC_FILTER_NORMAL ;
 int RC_PROTO_UNKNOWN ;
 int _img_ir_set_filter (struct img_ir_priv*,int *) ;
 int _img_ir_set_wake_filter (struct img_ir_priv*,int *) ;
 int del_timer_sync (int *) ;
 int img_ir_decoder_convert (struct img_ir_decoder const*,TYPE_2__*,int ) ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int img_ir_write (struct img_ir_priv*,int ,int) ;
 int img_ir_write_timings (struct img_ir_priv*,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void img_ir_set_decoder(struct img_ir_priv *priv,
          const struct img_ir_decoder *decoder,
          u64 proto)
{
 struct img_ir_priv_hw *hw = &priv->hw;
 struct rc_dev *rdev = hw->rdev;
 u32 ir_status, irq_en;
 spin_lock_irq(&priv->lock);





 hw->stopping = 1;





 spin_unlock_irq(&priv->lock);
 del_timer_sync(&hw->end_timer);
 del_timer_sync(&hw->suspend_timer);
 spin_lock_irq(&priv->lock);

 hw->stopping = 0;


 img_ir_write(priv, IMG_IR_CONTROL, 0);
 irq_en = img_ir_read(priv, IMG_IR_IRQ_ENABLE);
 img_ir_write(priv, IMG_IR_IRQ_ENABLE, irq_en & IMG_IR_IRQ_EDGE);
 img_ir_write(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_ALL & ~IMG_IR_IRQ_EDGE);


 ir_status = img_ir_read(priv, IMG_IR_STATUS);
 if (ir_status & (IMG_IR_RXDVAL | IMG_IR_RXDVALD2)) {
  ir_status &= ~(IMG_IR_RXDVAL | IMG_IR_RXDVALD2);
  img_ir_write(priv, IMG_IR_STATUS, ir_status);
 }


 img_ir_read(priv, IMG_IR_DATA_LW);
 img_ir_read(priv, IMG_IR_DATA_UP);


 hw->mode = IMG_IR_M_NORMAL;


 rdev->scancode_wakeup_filter.data = 0;
 rdev->scancode_wakeup_filter.mask = 0;
 rdev->wakeup_protocol = RC_PROTO_UNKNOWN;


 _img_ir_set_filter(priv, ((void*)0));
 _img_ir_set_wake_filter(priv, ((void*)0));


 hw->enabled_protocols = 0;


 hw->decoder = decoder;
 if (!decoder)
  goto unlock;


 if (!proto)
  proto = decoder->type;
 hw->enabled_protocols = proto;


 img_ir_decoder_convert(decoder, &hw->reg_timings, hw->clk_hz);
 img_ir_write_timings(priv, &hw->reg_timings.timings, RC_FILTER_NORMAL);


 img_ir_write(priv, IMG_IR_CONTROL, hw->reg_timings.ctrl);


unlock:
 spin_unlock_irq(&priv->lock);
}
