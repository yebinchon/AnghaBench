
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct i40e_vsi {unsigned int num_queue_pairs; struct i40e_ring** tx_rings; struct net_device* netdev; int state; } ;
struct TYPE_4__ {int prev_pkt_ctr; } ;
struct TYPE_3__ {int packets; } ;
struct i40e_ring {TYPE_2__ tx_stats; int q_vector; TYPE_1__ stats; scalar_t__ desc; } ;


 int INT_MAX ;
 int __I40E_VSI_DOWN ;
 int i40e_force_wb (struct i40e_vsi*,int ) ;
 scalar_t__ i40e_get_tx_pending (struct i40e_ring*,int) ;
 int netif_carrier_ok (struct net_device*) ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int ) ;

void i40e_detect_recover_hung(struct i40e_vsi *vsi)
{
 struct i40e_ring *tx_ring = ((void*)0);
 struct net_device *netdev;
 unsigned int i;
 int packets;

 if (!vsi)
  return;

 if (test_bit(__I40E_VSI_DOWN, vsi->state))
  return;

 netdev = vsi->netdev;
 if (!netdev)
  return;

 if (!netif_carrier_ok(netdev))
  return;

 for (i = 0; i < vsi->num_queue_pairs; i++) {
  tx_ring = vsi->tx_rings[i];
  if (tx_ring && tx_ring->desc) {







   packets = tx_ring->stats.packets & INT_MAX;
   if (tx_ring->tx_stats.prev_pkt_ctr == packets) {
    i40e_force_wb(vsi, tx_ring->q_vector);
    continue;
   }




   smp_rmb();
   tx_ring->tx_stats.prev_pkt_ctr =
       i40e_get_tx_pending(tx_ring, 1) ? packets : -1;
  }
 }
}
