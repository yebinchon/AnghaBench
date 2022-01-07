
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int tx_broadcast; int tx_multicast; int tx_unicast; int tx_bytes; int rx_discards; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_bytes; } ;
struct ice_hw_port_stats {int rx_jabber; int rx_oversize; int rx_fragments; int rx_undersize; int rx_len_errors; int mac_remote_faults; int mac_local_faults; int illegal_bytes; int crc_errors; int link_xoff_tx; int link_xon_tx; int link_xoff_rx; int link_xon_rx; int tx_size_big; int tx_size_1522; int tx_size_1023; int tx_size_511; int tx_size_255; int tx_size_127; int tx_size_64; int rx_size_big; int rx_size_1522; int rx_size_1023; int rx_size_511; int rx_size_255; int rx_size_127; int rx_size_64; int tx_dropped_link_down; TYPE_2__ eth; } ;
struct ice_hw {TYPE_1__* port_info; } ;
struct ice_pf {int stat_prev_loaded; struct ice_hw_port_stats stats; struct ice_hw_port_stats stats_prev; struct ice_hw hw; } ;
struct TYPE_3__ {int lport; } ;


 int GLPRT_BPRCL (int ) ;
 int GLPRT_BPTCL (int ) ;
 int GLPRT_CRCERRS (int ) ;
 int GLPRT_GORCL (int ) ;
 int GLPRT_GOTCL (int ) ;
 int GLPRT_ILLERRC (int ) ;
 int GLPRT_LXOFFRXC (int ) ;
 int GLPRT_LXOFFTXC (int ) ;
 int GLPRT_LXONRXC (int ) ;
 int GLPRT_LXONTXC (int ) ;
 int GLPRT_MLFC (int ) ;
 int GLPRT_MPRCL (int ) ;
 int GLPRT_MPTCL (int ) ;
 int GLPRT_MRFC (int ) ;
 int GLPRT_PRC1023L (int ) ;
 int GLPRT_PRC127L (int ) ;
 int GLPRT_PRC1522L (int ) ;
 int GLPRT_PRC255L (int ) ;
 int GLPRT_PRC511L (int ) ;
 int GLPRT_PRC64L (int ) ;
 int GLPRT_PRC9522L (int ) ;
 int GLPRT_PTC1023L (int ) ;
 int GLPRT_PTC127L (int ) ;
 int GLPRT_PTC1522L (int ) ;
 int GLPRT_PTC255L (int ) ;
 int GLPRT_PTC511L (int ) ;
 int GLPRT_PTC64L (int ) ;
 int GLPRT_PTC9522L (int ) ;
 int GLPRT_RFC (int ) ;
 int GLPRT_RJC (int ) ;
 int GLPRT_RLEC (int ) ;
 int GLPRT_ROC (int ) ;
 int GLPRT_RUC (int ) ;
 int GLPRT_TDOLD (int ) ;
 int GLPRT_UPRCL (int ) ;
 int GLPRT_UPTCL (int ) ;
 int PRTRPB_RDPC ;
 int ice_stat_update32 (struct ice_hw*,int ,int,int *,int *) ;
 int ice_stat_update40 (struct ice_hw*,int ,int,int *,int *) ;
 int ice_update_dcb_stats (struct ice_pf*) ;

void ice_update_pf_stats(struct ice_pf *pf)
{
 struct ice_hw_port_stats *prev_ps, *cur_ps;
 struct ice_hw *hw = &pf->hw;
 u8 port;

 port = hw->port_info->lport;
 prev_ps = &pf->stats_prev;
 cur_ps = &pf->stats;

 ice_stat_update40(hw, GLPRT_GORCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.rx_bytes,
     &cur_ps->eth.rx_bytes);

 ice_stat_update40(hw, GLPRT_UPRCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.rx_unicast,
     &cur_ps->eth.rx_unicast);

 ice_stat_update40(hw, GLPRT_MPRCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.rx_multicast,
     &cur_ps->eth.rx_multicast);

 ice_stat_update40(hw, GLPRT_BPRCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.rx_broadcast,
     &cur_ps->eth.rx_broadcast);

 ice_stat_update32(hw, PRTRPB_RDPC, pf->stat_prev_loaded,
     &prev_ps->eth.rx_discards,
     &cur_ps->eth.rx_discards);

 ice_stat_update40(hw, GLPRT_GOTCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.tx_bytes,
     &cur_ps->eth.tx_bytes);

 ice_stat_update40(hw, GLPRT_UPTCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.tx_unicast,
     &cur_ps->eth.tx_unicast);

 ice_stat_update40(hw, GLPRT_MPTCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.tx_multicast,
     &cur_ps->eth.tx_multicast);

 ice_stat_update40(hw, GLPRT_BPTCL(port), pf->stat_prev_loaded,
     &prev_ps->eth.tx_broadcast,
     &cur_ps->eth.tx_broadcast);

 ice_stat_update32(hw, GLPRT_TDOLD(port), pf->stat_prev_loaded,
     &prev_ps->tx_dropped_link_down,
     &cur_ps->tx_dropped_link_down);

 ice_stat_update40(hw, GLPRT_PRC64L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_64, &cur_ps->rx_size_64);

 ice_stat_update40(hw, GLPRT_PRC127L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_127, &cur_ps->rx_size_127);

 ice_stat_update40(hw, GLPRT_PRC255L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_255, &cur_ps->rx_size_255);

 ice_stat_update40(hw, GLPRT_PRC511L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_511, &cur_ps->rx_size_511);

 ice_stat_update40(hw, GLPRT_PRC1023L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_1023, &cur_ps->rx_size_1023);

 ice_stat_update40(hw, GLPRT_PRC1522L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_1522, &cur_ps->rx_size_1522);

 ice_stat_update40(hw, GLPRT_PRC9522L(port), pf->stat_prev_loaded,
     &prev_ps->rx_size_big, &cur_ps->rx_size_big);

 ice_stat_update40(hw, GLPRT_PTC64L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_64, &cur_ps->tx_size_64);

 ice_stat_update40(hw, GLPRT_PTC127L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_127, &cur_ps->tx_size_127);

 ice_stat_update40(hw, GLPRT_PTC255L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_255, &cur_ps->tx_size_255);

 ice_stat_update40(hw, GLPRT_PTC511L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_511, &cur_ps->tx_size_511);

 ice_stat_update40(hw, GLPRT_PTC1023L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_1023, &cur_ps->tx_size_1023);

 ice_stat_update40(hw, GLPRT_PTC1522L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_1522, &cur_ps->tx_size_1522);

 ice_stat_update40(hw, GLPRT_PTC9522L(port), pf->stat_prev_loaded,
     &prev_ps->tx_size_big, &cur_ps->tx_size_big);

 ice_stat_update32(hw, GLPRT_LXONRXC(port), pf->stat_prev_loaded,
     &prev_ps->link_xon_rx, &cur_ps->link_xon_rx);

 ice_stat_update32(hw, GLPRT_LXOFFRXC(port), pf->stat_prev_loaded,
     &prev_ps->link_xoff_rx, &cur_ps->link_xoff_rx);

 ice_stat_update32(hw, GLPRT_LXONTXC(port), pf->stat_prev_loaded,
     &prev_ps->link_xon_tx, &cur_ps->link_xon_tx);

 ice_stat_update32(hw, GLPRT_LXOFFTXC(port), pf->stat_prev_loaded,
     &prev_ps->link_xoff_tx, &cur_ps->link_xoff_tx);

 ice_update_dcb_stats(pf);

 ice_stat_update32(hw, GLPRT_CRCERRS(port), pf->stat_prev_loaded,
     &prev_ps->crc_errors, &cur_ps->crc_errors);

 ice_stat_update32(hw, GLPRT_ILLERRC(port), pf->stat_prev_loaded,
     &prev_ps->illegal_bytes, &cur_ps->illegal_bytes);

 ice_stat_update32(hw, GLPRT_MLFC(port), pf->stat_prev_loaded,
     &prev_ps->mac_local_faults,
     &cur_ps->mac_local_faults);

 ice_stat_update32(hw, GLPRT_MRFC(port), pf->stat_prev_loaded,
     &prev_ps->mac_remote_faults,
     &cur_ps->mac_remote_faults);

 ice_stat_update32(hw, GLPRT_RLEC(port), pf->stat_prev_loaded,
     &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);

 ice_stat_update32(hw, GLPRT_RUC(port), pf->stat_prev_loaded,
     &prev_ps->rx_undersize, &cur_ps->rx_undersize);

 ice_stat_update32(hw, GLPRT_RFC(port), pf->stat_prev_loaded,
     &prev_ps->rx_fragments, &cur_ps->rx_fragments);

 ice_stat_update32(hw, GLPRT_ROC(port), pf->stat_prev_loaded,
     &prev_ps->rx_oversize, &cur_ps->rx_oversize);

 ice_stat_update32(hw, GLPRT_RJC(port), pf->stat_prev_loaded,
     &prev_ps->rx_jabber, &cur_ps->rx_jabber);

 pf->stat_prev_loaded = 1;
}
