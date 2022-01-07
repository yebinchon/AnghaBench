
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pll_current; } ;
struct TYPE_4__ {int nr; } ;
struct bttv {int tvnorm; int input; TYPE_1__ pll; int s_lock; scalar_t__ errors; TYPE_2__ c; } ;


 int bttv_set_dma (struct bttv*,int ) ;
 scalar_t__ bttv_verbose ;
 int init_bt848 (struct bttv*) ;
 int pr_info (char*,int ) ;
 int set_input (struct bttv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bttv_reinit_bt848(struct bttv *btv)
{
 unsigned long flags;

 if (bttv_verbose)
  pr_info("%d: reset, reinitialize\n", btv->c.nr);
 spin_lock_irqsave(&btv->s_lock,flags);
 btv->errors=0;
 bttv_set_dma(btv,0);
 spin_unlock_irqrestore(&btv->s_lock,flags);

 init_bt848(btv);
 btv->pll.pll_current = -1;
 set_input(btv, btv->input, btv->tvnorm);
}
