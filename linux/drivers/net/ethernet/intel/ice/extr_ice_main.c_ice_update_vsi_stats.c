
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtnl_link_stats64 {int rx_missed_errors; int rx_length_errors; scalar_t__ rx_errors; scalar_t__ rx_crc_errors; int multicast; int tx_dropped; int rx_dropped; int tx_errors; } ;
struct ice_eth_stats {int rx_multicast; int tx_discards; int rx_discards; int tx_errors; } ;
struct ice_vsi {scalar_t__ type; int state; struct ice_pf* back; struct ice_eth_stats eth_stats; struct rtnl_link_stats64 net_stats; } ;
struct TYPE_3__ {int rx_discards; } ;
struct TYPE_4__ {TYPE_1__ eth; int rx_len_errors; scalar_t__ illegal_bytes; scalar_t__ crc_errors; } ;
struct ice_pf {TYPE_2__ stats; int state; } ;


 scalar_t__ ICE_VSI_PF ;
 int __ICE_CFG_BUSY ;
 int __ICE_DOWN ;
 int ice_update_eth_stats (struct ice_vsi*) ;
 int ice_update_vsi_ring_stats (struct ice_vsi*) ;
 scalar_t__ test_bit (int ,int ) ;

void ice_update_vsi_stats(struct ice_vsi *vsi)
{
 struct rtnl_link_stats64 *cur_ns = &vsi->net_stats;
 struct ice_eth_stats *cur_es = &vsi->eth_stats;
 struct ice_pf *pf = vsi->back;

 if (test_bit(__ICE_DOWN, vsi->state) ||
     test_bit(__ICE_CFG_BUSY, pf->state))
  return;


 ice_update_vsi_ring_stats(vsi);


 ice_update_eth_stats(vsi);

 cur_ns->tx_errors = cur_es->tx_errors;
 cur_ns->rx_dropped = cur_es->rx_discards;
 cur_ns->tx_dropped = cur_es->tx_discards;
 cur_ns->multicast = cur_es->rx_multicast;


 if (vsi->type == ICE_VSI_PF) {
  cur_ns->rx_crc_errors = pf->stats.crc_errors;
  cur_ns->rx_errors = pf->stats.crc_errors +
        pf->stats.illegal_bytes;
  cur_ns->rx_length_errors = pf->stats.rx_len_errors;

  cur_ns->rx_missed_errors = pf->stats.eth.rx_discards;
 }
}
