
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_8__ {int ioc; } ;
struct TYPE_9__ {TYPE_3__ ioceth; } ;
struct bnad {int bna_lock; TYPE_4__ bna; } ;
struct TYPE_6__ {int hb_timer; } ;
struct TYPE_7__ {TYPE_1__ ioc; } ;
struct TYPE_10__ {TYPE_2__ ioceth; } ;


 int bfa_nw_ioc_hb_check (int *) ;
 TYPE_5__ bna ;
 struct bnad* bnad ;
 struct bnad* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
bnad_ioc_hb_check(struct timer_list *t)
{
 struct bnad *bnad = from_timer(bnad, t, bna.ioceth.ioc.hb_timer);
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bfa_nw_ioc_hb_check(&bnad->bna.ioceth.ioc);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
