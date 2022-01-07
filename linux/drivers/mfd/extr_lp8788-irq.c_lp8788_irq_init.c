
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lp8788_irq_data {int irq_lock; scalar_t__ domain; struct lp8788* lp; } ;
struct lp8788 {int irq; TYPE_1__* dev; scalar_t__ irqdm; } ;
struct TYPE_4__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int LP8788_INT_MAX ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 struct lp8788_irq_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ irq_domain_add_linear (int ,int ,int *,struct lp8788_irq_data*) ;
 int lp8788_domain_ops ;
 int lp8788_irq_handler ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct lp8788_irq_data*) ;

int lp8788_irq_init(struct lp8788 *lp, int irq)
{
 struct lp8788_irq_data *irqd;
 int ret;

 if (irq <= 0) {
  dev_warn(lp->dev, "invalid irq number: %d\n", irq);
  return 0;
 }

 irqd = devm_kzalloc(lp->dev, sizeof(*irqd), GFP_KERNEL);
 if (!irqd)
  return -ENOMEM;

 irqd->lp = lp;
 irqd->domain = irq_domain_add_linear(lp->dev->of_node, LP8788_INT_MAX,
     &lp8788_domain_ops, irqd);
 if (!irqd->domain) {
  dev_err(lp->dev, "failed to add irq domain err\n");
  return -EINVAL;
 }

 lp->irqdm = irqd->domain;
 mutex_init(&irqd->irq_lock);

 ret = request_threaded_irq(irq, ((void*)0), lp8788_irq_handler,
    IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
    "lp8788-irq", irqd);
 if (ret) {
  dev_err(lp->dev, "failed to create a thread for IRQ_N\n");
  return ret;
 }

 lp->irq = irq;

 return 0;
}
