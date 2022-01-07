
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ice_vsi {int num_rxq; int num_txq; TYPE_4__** tx_rings; TYPE_2__** rx_rings; } ;
struct ethtool_coalesce {int dummy; } ;
struct TYPE_8__ {TYPE_3__* q_vector; } ;
struct TYPE_7__ {int tx; } ;
struct TYPE_6__ {TYPE_1__* q_vector; } ;
struct TYPE_5__ {int rx; } ;


 int EINVAL ;
 int ICE_RX_CONTAINER ;
 int ICE_TX_CONTAINER ;
 scalar_t__ ice_set_rc_coalesce (int ,struct ethtool_coalesce*,int *,struct ice_vsi*) ;

__attribute__((used)) static int
ice_set_q_coalesce(struct ice_vsi *vsi, struct ethtool_coalesce *ec, int q_num)
{
 if (q_num < vsi->num_rxq && q_num < vsi->num_txq) {
  if (ice_set_rc_coalesce(ICE_RX_CONTAINER, ec,
     &vsi->rx_rings[q_num]->q_vector->rx,
     vsi))
   return -EINVAL;

  if (ice_set_rc_coalesce(ICE_TX_CONTAINER, ec,
     &vsi->tx_rings[q_num]->q_vector->tx,
     vsi))
   return -EINVAL;
 } else if (q_num < vsi->num_rxq) {
  if (ice_set_rc_coalesce(ICE_RX_CONTAINER, ec,
     &vsi->rx_rings[q_num]->q_vector->rx,
     vsi))
   return -EINVAL;
 } else if (q_num < vsi->num_txq) {
  if (ice_set_rc_coalesce(ICE_TX_CONTAINER, ec,
     &vsi->tx_rings[q_num]->q_vector->tx,
     vsi))
   return -EINVAL;
 } else {
  return -EINVAL;
 }

 return 0;
}
