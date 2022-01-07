
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gfar_priv_grp {TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ievent; } ;


 int IEVENT_ERR_MASK ;
 int IEVENT_RX_MASK ;
 int IEVENT_TX_MASK ;
 int IRQ_HANDLED ;
 int gfar_error (int,void*) ;
 int gfar_read (int *) ;
 int gfar_receive (int,void*) ;
 int gfar_transmit (int,void*) ;

__attribute__((used)) static irqreturn_t gfar_interrupt(int irq, void *grp_id)
{
 struct gfar_priv_grp *gfargrp = grp_id;


 u32 events = gfar_read(&gfargrp->regs->ievent);


 if (events & IEVENT_RX_MASK)
  gfar_receive(irq, grp_id);


 if (events & IEVENT_TX_MASK)
  gfar_transmit(irq, grp_id);


 if (events & IEVENT_ERR_MASK)
  gfar_error(irq, grp_id);

 return IRQ_HANDLED;
}
