
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct bttv_ir {int polling; int timer; struct bttv* btv; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bttv {TYPE_1__ c; } ;


 scalar_t__ BTTV_BOARD_ENLTV_FM_2 ;
 struct bttv_ir* from_timer (int ,struct timer_list*,int ) ;
 struct bttv_ir* ir ;
 int ir_enltv_handle_key (struct bttv*) ;
 int ir_handle_key (struct bttv*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer ;

__attribute__((used)) static void bttv_input_timer(struct timer_list *t)
{
 struct bttv_ir *ir = from_timer(ir, t, timer);
 struct bttv *btv = ir->btv;

 if (btv->c.type == BTTV_BOARD_ENLTV_FM_2)
  ir_enltv_handle_key(btv);
 else
  ir_handle_key(btv);
 mod_timer(&ir->timer, jiffies + msecs_to_jiffies(ir->polling));
}
