
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_nic_priv {TYPE_2__* ring_data; } ;
struct TYPE_4__ {TYPE_1__* ring; } ;
struct TYPE_3__ {scalar_t__ irq_init_flag; int irq; } ;


 scalar_t__ RCB_IRQ_INITED ;
 scalar_t__ RCB_IRQ_NOT_INITED ;
 int free_irq (int ,TYPE_2__*) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void hns_nic_free_irq(int q_num, struct hns_nic_priv *priv)
{
 int i;

 for (i = 0; i < q_num * 2; i++) {
  if (priv->ring_data[i].ring->irq_init_flag == RCB_IRQ_INITED) {
   irq_set_affinity_hint(priv->ring_data[i].ring->irq,
           ((void*)0));
   free_irq(priv->ring_data[i].ring->irq,
     &priv->ring_data[i]);
   priv->ring_data[i].ring->irq_init_flag =
    RCB_IRQ_NOT_INITED;
  }
 }
}
