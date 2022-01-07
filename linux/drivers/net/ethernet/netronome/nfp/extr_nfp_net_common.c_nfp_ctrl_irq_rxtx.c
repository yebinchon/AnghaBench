
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_r_vector {int tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t nfp_ctrl_irq_rxtx(int irq, void *data)
{
 struct nfp_net_r_vector *r_vec = data;

 tasklet_schedule(&r_vec->tasklet);

 return IRQ_HANDLED;
}
