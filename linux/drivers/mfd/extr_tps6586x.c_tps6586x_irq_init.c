
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int tmp ;
struct tps6586x {int irq; int* mask_reg; TYPE_1__* dev; int irq_domain; int irq_lock; } ;
struct TYPE_5__ {int of_node; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int IRQF_ONESHOT ;
 int TPS6586X_INT_ACK1 ;
 scalar_t__ TPS6586X_INT_MASK1 ;
 int dev_err (TYPE_1__*,char*,...) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 int irq_alloc_descs (int,int ,int,int) ;
 int irq_domain_add_simple (int ,int,int,int *,struct tps6586x*) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct tps6586x*) ;
 int tps6586x_domain_ops ;
 int tps6586x_irq ;
 int tps6586x_irqs ;
 int tps6586x_reads (TYPE_1__*,int ,int,int *) ;
 int tps6586x_write (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static int tps6586x_irq_init(struct tps6586x *tps6586x, int irq,
           int irq_base)
{
 int i, ret;
 u8 tmp[4];
 int new_irq_base;
 int irq_num = ARRAY_SIZE(tps6586x_irqs);

 tps6586x->irq = irq;

 mutex_init(&tps6586x->irq_lock);
 for (i = 0; i < 5; i++) {
  tps6586x->mask_reg[i] = 0xff;
  tps6586x_write(tps6586x->dev, TPS6586X_INT_MASK1 + i, 0xff);
 }

 tps6586x_reads(tps6586x->dev, TPS6586X_INT_ACK1, sizeof(tmp), tmp);

 if (irq_base > 0) {
  new_irq_base = irq_alloc_descs(irq_base, 0, irq_num, -1);
  if (new_irq_base < 0) {
   dev_err(tps6586x->dev,
    "Failed to alloc IRQs: %d\n", new_irq_base);
   return new_irq_base;
  }
 } else {
  new_irq_base = 0;
 }

 tps6586x->irq_domain = irq_domain_add_simple(tps6586x->dev->of_node,
    irq_num, new_irq_base, &tps6586x_domain_ops,
    tps6586x);
 if (!tps6586x->irq_domain) {
  dev_err(tps6586x->dev, "Failed to create IRQ domain\n");
  return -ENOMEM;
 }
 ret = request_threaded_irq(irq, ((void*)0), tps6586x_irq, IRQF_ONESHOT,
       "tps6586x", tps6586x);

 if (!ret)
  device_init_wakeup(tps6586x->dev, 1);

 return ret;
}
