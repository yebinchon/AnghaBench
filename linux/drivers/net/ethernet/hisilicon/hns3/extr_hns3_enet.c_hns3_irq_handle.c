
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_tqp_vector {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t hns3_irq_handle(int irq, void *vector)
{
 struct hns3_enet_tqp_vector *tqp_vector = vector;

 napi_schedule_irqoff(&tqp_vector->napi);

 return IRQ_HANDLED;
}
