
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hns_nic_priv {TYPE_2__* ring_data; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; } ;
struct TYPE_5__ {TYPE_1__* ring; int napi; } ;
struct TYPE_4__ {scalar_t__ irq_init_flag; int irq; } ;


 scalar_t__ RCB_IRQ_INITED ;
 scalar_t__ RCB_IRQ_NOT_INITED ;
 int free_irq (int ,TYPE_2__*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kfree (TYPE_2__*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void hns_nic_uninit_ring_data(struct hns_nic_priv *priv)
{
 struct hnae_handle *h = priv->ae_handle;
 int i;

 for (i = 0; i < h->q_num * 2; i++) {
  netif_napi_del(&priv->ring_data[i].napi);
  if (priv->ring_data[i].ring->irq_init_flag == RCB_IRQ_INITED) {
   (void)irq_set_affinity_hint(
    priv->ring_data[i].ring->irq,
    ((void*)0));
   free_irq(priv->ring_data[i].ring->irq,
     &priv->ring_data[i]);
  }

  priv->ring_data[i].ring->irq_init_flag = RCB_IRQ_NOT_INITED;
 }
 kfree(priv->ring_data);
}
