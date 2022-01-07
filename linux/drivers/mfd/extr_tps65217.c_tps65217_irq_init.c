
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tps65217 {int irq; TYPE_1__* dev; int irq_domain; int irq_mask; int irq_lock; } ;
struct TYPE_3__ {int of_node; } ;


 int ENOMEM ;
 int IRQF_ONESHOT ;
 int TPS65217_INT_MASK ;
 int TPS65217_NUM_IRQ ;
 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_INT ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct tps65217*) ;
 int enable_irq_wake (int) ;
 int irq_domain_add_linear (int ,int ,int *,struct tps65217*) ;
 int mutex_init (int *) ;
 int tps65217_irq_domain_ops ;
 int tps65217_irq_thread ;
 int tps65217_set_bits (struct tps65217*,int ,int ,int ,int ) ;

__attribute__((used)) static int tps65217_irq_init(struct tps65217 *tps, int irq)
{
 int ret;

 mutex_init(&tps->irq_lock);
 tps->irq = irq;


 tps->irq_mask = TPS65217_INT_MASK;
 tps65217_set_bits(tps, TPS65217_REG_INT, TPS65217_INT_MASK,
     TPS65217_INT_MASK, TPS65217_PROTECT_NONE);

 tps->irq_domain = irq_domain_add_linear(tps->dev->of_node,
  TPS65217_NUM_IRQ, &tps65217_irq_domain_ops, tps);
 if (!tps->irq_domain) {
  dev_err(tps->dev, "Could not create IRQ domain\n");
  return -ENOMEM;
 }

 ret = devm_request_threaded_irq(tps->dev, irq, ((void*)0),
     tps65217_irq_thread, IRQF_ONESHOT,
     "tps65217-irq", tps);
 if (ret) {
  dev_err(tps->dev, "Failed to request IRQ %d: %d\n",
   irq, ret);
  return ret;
 }

 enable_irq_wake(irq);

 return 0;
}
