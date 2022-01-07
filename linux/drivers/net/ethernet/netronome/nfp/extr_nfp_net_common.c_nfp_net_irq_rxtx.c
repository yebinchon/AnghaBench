
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_r_vector {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t nfp_net_irq_rxtx(int irq, void *data)
{
 struct nfp_net_r_vector *r_vec = data;

 napi_schedule_irqoff(&r_vec->napi);





 return IRQ_HANDLED;
}
