
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_eth_stats {int tx_errors; int tx_broadcast; int tx_multicast; int tx_unicast; int tx_bytes; int rx_discards; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_bytes; } ;
struct ice_vsi {int stat_offsets_loaded; struct ice_eth_stats eth_stats; struct ice_eth_stats eth_stats_prev; int vsi_num; TYPE_1__* back; } ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {struct ice_hw hw; } ;


 int GLV_BPRCL (int ) ;
 int GLV_BPTCL (int ) ;
 int GLV_GORCL (int ) ;
 int GLV_GOTCL (int ) ;
 int GLV_MPRCL (int ) ;
 int GLV_MPTCL (int ) ;
 int GLV_RDPC (int ) ;
 int GLV_TEPC (int ) ;
 int GLV_UPRCL (int ) ;
 int GLV_UPTCL (int ) ;
 int ice_stat_update32 (struct ice_hw*,int ,int,int *,int *) ;
 int ice_stat_update40 (struct ice_hw*,int ,int,int *,int *) ;

void ice_update_eth_stats(struct ice_vsi *vsi)
{
 struct ice_eth_stats *prev_es, *cur_es;
 struct ice_hw *hw = &vsi->back->hw;
 u16 vsi_num = vsi->vsi_num;

 prev_es = &vsi->eth_stats_prev;
 cur_es = &vsi->eth_stats;

 ice_stat_update40(hw, GLV_GORCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->rx_bytes, &cur_es->rx_bytes);

 ice_stat_update40(hw, GLV_UPRCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->rx_unicast, &cur_es->rx_unicast);

 ice_stat_update40(hw, GLV_MPRCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->rx_multicast, &cur_es->rx_multicast);

 ice_stat_update40(hw, GLV_BPRCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->rx_broadcast, &cur_es->rx_broadcast);

 ice_stat_update32(hw, GLV_RDPC(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->rx_discards, &cur_es->rx_discards);

 ice_stat_update40(hw, GLV_GOTCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->tx_bytes, &cur_es->tx_bytes);

 ice_stat_update40(hw, GLV_UPTCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->tx_unicast, &cur_es->tx_unicast);

 ice_stat_update40(hw, GLV_MPTCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->tx_multicast, &cur_es->tx_multicast);

 ice_stat_update40(hw, GLV_BPTCL(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->tx_broadcast, &cur_es->tx_broadcast);

 ice_stat_update32(hw, GLV_TEPC(vsi_num), vsi->stat_offsets_loaded,
     &prev_es->tx_errors, &cur_es->tx_errors);

 vsi->stat_offsets_loaded = 1;
}
