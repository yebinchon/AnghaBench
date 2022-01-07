
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct fza_private {int timer_state; TYPE_2__ reset_timer; TYPE_1__* regs; int int_mask; int name; } ;
struct TYPE_3__ {int int_mask; int reset; } ;


 int FZA_RESET_CLR ;
 int FZA_RESET_INIT ;
 int HZ ;
 int add_timer (TYPE_2__*) ;
 struct fza_private* fp ;
 struct fza_private* from_timer (int ,struct timer_list*,int ) ;
 void* jiffies ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;
 int readw_o (int *) ;
 int reset_timer ;
 int writew_o (int ,int *) ;
 int writew_u (int ,int *) ;

__attribute__((used)) static void fza_reset_timer(struct timer_list *t)
{
 struct fza_private *fp = from_timer(fp, t, reset_timer);

 if (!fp->timer_state) {
  pr_err("%s: RESET timed out!\n", fp->name);
  pr_info("%s: trying harder...\n", fp->name);


  writew_o(FZA_RESET_INIT, &fp->regs->reset);
  readw_o(&fp->regs->reset);

  fp->timer_state = 1;
  fp->reset_timer.expires = jiffies + HZ;
 } else {

  writew_u(FZA_RESET_CLR, &fp->regs->reset);


  writew_o(fp->int_mask, &fp->regs->int_mask);
  readw_o(&fp->regs->int_mask);

  fp->timer_state = 0;
  fp->reset_timer.expires = jiffies + 45 * HZ;
 }
 add_timer(&fp->reset_timer);
}
