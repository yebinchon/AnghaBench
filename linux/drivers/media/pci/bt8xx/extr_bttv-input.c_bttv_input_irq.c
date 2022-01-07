
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_ir {int polling; scalar_t__ rc5_gpio; } ;
struct bttv {struct bttv_ir* remote; } ;


 int bttv_rc5_irq (struct bttv*) ;
 int ir_handle_key (struct bttv*) ;

void bttv_input_irq(struct bttv *btv)
{
 struct bttv_ir *ir = btv->remote;

 if (ir->rc5_gpio)
  bttv_rc5_irq(btv);
 else if (!ir->polling)
  ir_handle_key(btv);
}
