
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int eventfd_signal (struct eventfd_ctx*,int) ;

__attribute__((used)) static irqreturn_t irq_handler(void *private)
{
 struct eventfd_ctx *ev_ctx = private;

 eventfd_signal(ev_ctx, 1);
 return IRQ_HANDLED;
}
