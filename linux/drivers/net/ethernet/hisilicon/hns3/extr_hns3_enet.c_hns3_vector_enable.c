
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_tqp_vector {int napi; } ;


 int hns3_mask_vector_irq (struct hns3_enet_tqp_vector*,int) ;
 int napi_enable (int *) ;

__attribute__((used)) static void hns3_vector_enable(struct hns3_enet_tqp_vector *tqp_vector)
{
 napi_enable(&tqp_vector->napi);


 hns3_mask_vector_irq(tqp_vector, 1);
}
