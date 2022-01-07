
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvneta_pcpu_port {int napi; TYPE_2__* pp; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int irq; } ;


 int IRQ_HANDLED ;
 int disable_percpu_irq (int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t mvneta_percpu_isr(int irq, void *dev_id)
{
 struct mvneta_pcpu_port *port = (struct mvneta_pcpu_port *)dev_id;

 disable_percpu_irq(port->pp->dev->irq);
 napi_schedule(&port->napi);

 return IRQ_HANDLED;
}
