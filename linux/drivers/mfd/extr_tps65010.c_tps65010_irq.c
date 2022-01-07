
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65010 {int work; int flags; } ;
typedef int irqreturn_t ;


 int FLAG_IRQ_ENABLE ;
 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t tps65010_irq(int irq, void *_tps)
{
 struct tps65010 *tps = _tps;

 disable_irq_nosync(irq);
 set_bit(FLAG_IRQ_ENABLE, &tps->flags);
 queue_delayed_work(system_power_efficient_wq, &tps->work, 0);
 return IRQ_HANDLED;
}
