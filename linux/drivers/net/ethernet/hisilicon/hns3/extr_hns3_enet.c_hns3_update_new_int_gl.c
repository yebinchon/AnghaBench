
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_gl; scalar_t__ gl_adapt_enable; } ;
struct hns3_enet_ring_group {TYPE_1__ coal; } ;
struct hns3_enet_tqp_vector {scalar_t__ last_jiffies; struct hns3_enet_ring_group tx_group; struct hns3_enet_ring_group rx_group; } ;


 int hns3_get_new_int_gl (struct hns3_enet_ring_group*) ;
 int hns3_set_vector_coalesce_rx_gl (struct hns3_enet_tqp_vector*,int ) ;
 int hns3_set_vector_coalesce_tx_gl (struct hns3_enet_tqp_vector*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hns3_update_new_int_gl(struct hns3_enet_tqp_vector *tqp_vector)
{
 struct hns3_enet_ring_group *rx_group = &tqp_vector->rx_group;
 struct hns3_enet_ring_group *tx_group = &tqp_vector->tx_group;
 bool rx_update, tx_update;


 if (time_before(jiffies,
   tqp_vector->last_jiffies + msecs_to_jiffies(1000)))
  return;

 if (rx_group->coal.gl_adapt_enable) {
  rx_update = hns3_get_new_int_gl(rx_group);
  if (rx_update)
   hns3_set_vector_coalesce_rx_gl(tqp_vector,
             rx_group->coal.int_gl);
 }

 if (tx_group->coal.gl_adapt_enable) {
  tx_update = hns3_get_new_int_gl(tx_group);
  if (tx_update)
   hns3_set_vector_coalesce_tx_gl(tqp_vector,
             tx_group->coal.int_gl);
 }

 tqp_vector->last_jiffies = jiffies;
}
