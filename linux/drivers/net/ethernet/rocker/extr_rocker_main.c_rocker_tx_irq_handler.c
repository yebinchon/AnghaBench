
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int napi_tx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t rocker_tx_irq_handler(int irq, void *dev_id)
{
 struct rocker_port *rocker_port = dev_id;

 napi_schedule(&rocker_port->napi_tx);
 return IRQ_HANDLED;
}
