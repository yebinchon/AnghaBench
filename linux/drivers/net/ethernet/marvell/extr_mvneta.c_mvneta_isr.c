
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MVNETA_INTR_NEW_MASK ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t mvneta_isr(int irq, void *dev_id)
{
 struct mvneta_port *pp = (struct mvneta_port *)dev_id;

 mvreg_write(pp, MVNETA_INTR_NEW_MASK, 0);
 napi_schedule(&pp->napi);

 return IRQ_HANDLED;
}
