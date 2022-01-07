
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sfp_check_state (struct sfp*) ;

__attribute__((used)) static irqreturn_t sfp_irq(int irq, void *data)
{
 struct sfp *sfp = data;

 sfp_check_state(sfp);

 return IRQ_HANDLED;
}
