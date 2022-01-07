
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int phylink_run_resolve (struct phylink*) ;

__attribute__((used)) static irqreturn_t phylink_link_handler(int irq, void *data)
{
 struct phylink *pl = data;

 phylink_run_resolve(pl);

 return IRQ_HANDLED;
}
