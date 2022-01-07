
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_tqp_vector {int napi; int vector_irq; } ;


 int disable_irq (int ) ;
 int hns3_mask_vector_irq (struct hns3_enet_tqp_vector*,int ) ;
 int napi_disable (int *) ;

__attribute__((used)) static void hns3_vector_disable(struct hns3_enet_tqp_vector *tqp_vector)
{

 hns3_mask_vector_irq(tqp_vector, 0);

 disable_irq(tqp_vector->vector_irq);
 napi_disable(&tqp_vector->napi);
}
