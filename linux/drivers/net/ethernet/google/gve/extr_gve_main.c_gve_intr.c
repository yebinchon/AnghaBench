
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int dummy; } ;
struct gve_notify_block {int napi; struct gve_priv* priv; } ;
typedef int irqreturn_t ;


 int GVE_IRQ_MASK ;
 int IRQ_HANDLED ;
 int gve_irq_doorbell (struct gve_priv*,struct gve_notify_block*) ;
 int iowrite32be (int ,int ) ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t gve_intr(int irq, void *arg)
{
 struct gve_notify_block *block = arg;
 struct gve_priv *priv = block->priv;

 iowrite32be(GVE_IRQ_MASK, gve_irq_doorbell(priv, block));
 napi_schedule_irqoff(&block->napi);
 return IRQ_HANDLED;
}
