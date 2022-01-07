
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct hns3_nic_priv {TYPE_1__* ring_data; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_2__ {struct hns3_enet_ring* ring; } ;


 int hns3_clean_tx_ring (struct hns3_enet_ring*) ;

__attribute__((used)) static void hns3_lb_clear_tx_ring(struct hns3_nic_priv *priv, u32 start_ringid,
      u32 end_ringid, u32 budget)
{
 u32 i;

 for (i = start_ringid; i <= end_ringid; i++) {
  struct hns3_enet_ring *ring = priv->ring_data[i].ring;

  hns3_clean_tx_ring(ring);
 }
}
