
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {int dummy; } ;
struct img_ir_priv_raw {int last_status; struct rc_dev* rdev; } ;
struct img_ir_priv {struct img_ir_priv_raw raw; } ;


 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRRXD ;
 int IMG_IR_STATUS ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int ir_raw_event_handle (struct rc_dev*) ;
 int ir_raw_event_store_edge (struct rc_dev*,int) ;

__attribute__((used)) static void img_ir_refresh_raw(struct img_ir_priv *priv, u32 irq_status)
{
 struct img_ir_priv_raw *raw = &priv->raw;
 struct rc_dev *rc_dev = priv->raw.rdev;
 int multiple;
 u32 ir_status;


 multiple = ((irq_status & IMG_IR_IRQ_EDGE) == IMG_IR_IRQ_EDGE);





 ir_status = img_ir_read(priv, IMG_IR_STATUS) & IMG_IR_IRRXD;
 if (multiple && ir_status == raw->last_status)
  return;
 raw->last_status = ir_status;


 if (ir_status)
  ir_raw_event_store_edge(rc_dev, 0);
 else
  ir_raw_event_store_edge(rc_dev, 1);
 ir_raw_event_handle(rc_dev);
}
