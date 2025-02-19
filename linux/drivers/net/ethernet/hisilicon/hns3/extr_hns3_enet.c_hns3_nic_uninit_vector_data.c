
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int ring; } ;
struct hns3_enet_tqp_vector {scalar_t__ irq_init_flag; int napi; TYPE_3__ tx_group; TYPE_3__ rx_group; int vector_irq; } ;
struct hnae3_ring_chain_node {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* unmap_ring_from_vector ) (struct hnae3_handle*,int ,struct hnae3_ring_chain_node*) ;} ;


 scalar_t__ HNS3_VECTOR_INITED ;
 scalar_t__ HNS3_VECTOR_NOT_INITED ;
 int free_irq (int ,struct hns3_enet_tqp_vector*) ;
 int hns3_clear_ring_group (TYPE_3__*) ;
 int hns3_free_vector_ring_chain (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ;
 int hns3_get_vector_ring_chain (struct hns3_enet_tqp_vector*,struct hnae3_ring_chain_node*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netif_napi_del (int *) ;
 int stub1 (struct hnae3_handle*,int ,struct hnae3_ring_chain_node*) ;

__attribute__((used)) static void hns3_nic_uninit_vector_data(struct hns3_nic_priv *priv)
{
 struct hnae3_ring_chain_node vector_ring_chain;
 struct hnae3_handle *h = priv->ae_handle;
 struct hns3_enet_tqp_vector *tqp_vector;
 int i;

 for (i = 0; i < priv->vector_num; i++) {
  tqp_vector = &priv->tqp_vector[i];

  if (!tqp_vector->rx_group.ring && !tqp_vector->tx_group.ring)
   continue;

  hns3_get_vector_ring_chain(tqp_vector, &vector_ring_chain);

  h->ae_algo->ops->unmap_ring_from_vector(h,
   tqp_vector->vector_irq, &vector_ring_chain);

  hns3_free_vector_ring_chain(tqp_vector, &vector_ring_chain);

  if (tqp_vector->irq_init_flag == HNS3_VECTOR_INITED) {
   irq_set_affinity_hint(tqp_vector->vector_irq, ((void*)0));
   free_irq(tqp_vector->vector_irq, tqp_vector);
   tqp_vector->irq_init_flag = HNS3_VECTOR_NOT_INITED;
  }

  hns3_clear_ring_group(&tqp_vector->rx_group);
  hns3_clear_ring_group(&tqp_vector->tx_group);
  netif_napi_del(&priv->tqp_vector[i].napi);
 }
}
