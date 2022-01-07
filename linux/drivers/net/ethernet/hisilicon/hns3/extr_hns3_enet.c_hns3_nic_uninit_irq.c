
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_nic_priv {unsigned int vector_num; struct hns3_enet_tqp_vector* tqp_vector; } ;
struct hns3_enet_tqp_vector {scalar_t__ irq_init_flag; int vector_irq; } ;


 scalar_t__ HNS3_VECTOR_INITED ;
 scalar_t__ HNS3_VECTOR_NOT_INITED ;
 int free_irq (int ,struct hns3_enet_tqp_vector*) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void hns3_nic_uninit_irq(struct hns3_nic_priv *priv)
{
 struct hns3_enet_tqp_vector *tqp_vectors;
 unsigned int i;

 for (i = 0; i < priv->vector_num; i++) {
  tqp_vectors = &priv->tqp_vector[i];

  if (tqp_vectors->irq_init_flag != HNS3_VECTOR_INITED)
   continue;


  irq_set_affinity_hint(tqp_vectors->vector_irq, ((void*)0));


  free_irq(tqp_vectors->vector_irq, tqp_vectors);
  tqp_vectors->irq_init_flag = HNS3_VECTOR_NOT_INITED;
 }
}
