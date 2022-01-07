
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {TYPE_1__* ring_data; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_4__ {size_t num_tqps; struct net_device* netdev; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {struct hns3_enet_ring* ring; } ;


 int hns3_clear_rx_ring (struct hns3_enet_ring*) ;
 int hns3_clear_tx_ring (struct hns3_enet_ring*) ;
 int hns3_force_clear_rx_ring (struct hns3_enet_ring*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hns3_clear_all_ring(struct hnae3_handle *h, bool force)
{
 struct net_device *ndev = h->kinfo.netdev;
 struct hns3_nic_priv *priv = netdev_priv(ndev);
 u32 i;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  struct hns3_enet_ring *ring;

  ring = priv->ring_data[i].ring;
  hns3_clear_tx_ring(ring);

  ring = priv->ring_data[i + h->kinfo.num_tqps].ring;



  if (force)
   hns3_force_clear_rx_ring(ring);
  else
   hns3_clear_rx_ring(ring);
 }
}
