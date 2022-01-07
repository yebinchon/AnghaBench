
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_priv {int service_task; int gve_wq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t gve_mgmnt_intr(int irq, void *arg)
{
 struct gve_priv *priv = arg;

 queue_work(priv->gve_wq, &priv->service_task);
 return IRQ_HANDLED;
}
