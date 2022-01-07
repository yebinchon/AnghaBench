
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfar_priv_grp {TYPE_1__* regs; int napi_rx; int grplock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ievent; int imask; } ;


 int IEVENT_FGPI ;
 int IEVENT_RX_MASK ;
 int IMASK_RX_DISABLED ;
 int IRQ_HANDLED ;
 int __napi_schedule (int *) ;
 int gfar_read (int *) ;
 int gfar_write (int *,int) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t gfar_receive(int irq, void *grp_id)
{
 struct gfar_priv_grp *grp = (struct gfar_priv_grp *)grp_id;
 unsigned long flags;
 u32 imask, ievent;

 ievent = gfar_read(&grp->regs->ievent);

 if (unlikely(ievent & IEVENT_FGPI)) {
  gfar_write(&grp->regs->ievent, IEVENT_FGPI);
  return IRQ_HANDLED;
 }

 if (likely(napi_schedule_prep(&grp->napi_rx))) {
  spin_lock_irqsave(&grp->grplock, flags);
  imask = gfar_read(&grp->regs->imask);
  imask &= IMASK_RX_DISABLED;
  gfar_write(&grp->regs->imask, imask);
  spin_unlock_irqrestore(&grp->grplock, flags);
  __napi_schedule(&grp->napi_rx);
 } else {



  gfar_write(&grp->regs->ievent, IEVENT_RX_MASK);
 }

 return IRQ_HANDLED;
}
