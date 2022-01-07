
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ stale; } ;


 TYPE_1__* PRIV (struct net_device*) ;
 int ax_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t ei_irq_wrapper(int irq, void *dev_id)
{
    struct net_device *dev = dev_id;
    PRIV(dev)->stale = 0;
    return ax_interrupt(irq, dev_id);
}
