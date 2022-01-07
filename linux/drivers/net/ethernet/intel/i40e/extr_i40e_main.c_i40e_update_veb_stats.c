
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_veb_tc_stats {int * tc_tx_bytes; int * tc_tx_packets; int * tc_rx_bytes; int * tc_rx_packets; } ;
struct i40e_eth_stats {int tx_broadcast; int tx_multicast; int tx_unicast; int tx_bytes; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_bytes; int rx_unknown_protocol; int tx_discards; } ;
struct i40e_veb {int stats_idx; int stat_offsets_loaded; struct i40e_veb_tc_stats tc_stats_offsets; struct i40e_veb_tc_stats tc_stats; struct i40e_eth_stats stats_offsets; struct i40e_eth_stats stats; struct i40e_pf* pf; } ;
struct i40e_hw {scalar_t__ revision_id; } ;
struct i40e_pf {struct i40e_hw hw; } ;


 int I40E_GLSW_BPRCH (int) ;
 int I40E_GLSW_BPRCL (int) ;
 int I40E_GLSW_BPTCH (int) ;
 int I40E_GLSW_BPTCL (int) ;
 int I40E_GLSW_GORCH (int) ;
 int I40E_GLSW_GORCL (int) ;
 int I40E_GLSW_GOTCH (int) ;
 int I40E_GLSW_GOTCL (int) ;
 int I40E_GLSW_MPRCH (int) ;
 int I40E_GLSW_MPRCL (int) ;
 int I40E_GLSW_MPTCH (int) ;
 int I40E_GLSW_MPTCL (int) ;
 int I40E_GLSW_RUPP (int) ;
 int I40E_GLSW_TDPC (int) ;
 int I40E_GLSW_UPRCH (int) ;
 int I40E_GLSW_UPRCL (int) ;
 int I40E_GLSW_UPTCH (int) ;
 int I40E_GLSW_UPTCL (int) ;
 int I40E_GLVEBTC_RBCH (int,int) ;
 int I40E_GLVEBTC_RBCL (int,int) ;
 int I40E_GLVEBTC_RPCH (int,int) ;
 int I40E_GLVEBTC_RPCL (int,int) ;
 int I40E_GLVEBTC_TBCH (int,int) ;
 int I40E_GLVEBTC_TBCL (int,int) ;
 int I40E_GLVEBTC_TPCH (int,int) ;
 int I40E_GLVEBTC_TPCL (int,int) ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int i40e_stat_update32 (struct i40e_hw*,int ,int,int *,int *) ;
 int i40e_stat_update48 (struct i40e_hw*,int ,int ,int,int *,int *) ;

void i40e_update_veb_stats(struct i40e_veb *veb)
{
 struct i40e_pf *pf = veb->pf;
 struct i40e_hw *hw = &pf->hw;
 struct i40e_eth_stats *oes;
 struct i40e_eth_stats *es;
 struct i40e_veb_tc_stats *veb_oes;
 struct i40e_veb_tc_stats *veb_es;
 int i, idx = 0;

 idx = veb->stats_idx;
 es = &veb->stats;
 oes = &veb->stats_offsets;
 veb_es = &veb->tc_stats;
 veb_oes = &veb->tc_stats_offsets;


 i40e_stat_update32(hw, I40E_GLSW_TDPC(idx),
      veb->stat_offsets_loaded,
      &oes->tx_discards, &es->tx_discards);
 if (hw->revision_id > 0)
  i40e_stat_update32(hw, I40E_GLSW_RUPP(idx),
       veb->stat_offsets_loaded,
       &oes->rx_unknown_protocol,
       &es->rx_unknown_protocol);
 i40e_stat_update48(hw, I40E_GLSW_GORCH(idx), I40E_GLSW_GORCL(idx),
      veb->stat_offsets_loaded,
      &oes->rx_bytes, &es->rx_bytes);
 i40e_stat_update48(hw, I40E_GLSW_UPRCH(idx), I40E_GLSW_UPRCL(idx),
      veb->stat_offsets_loaded,
      &oes->rx_unicast, &es->rx_unicast);
 i40e_stat_update48(hw, I40E_GLSW_MPRCH(idx), I40E_GLSW_MPRCL(idx),
      veb->stat_offsets_loaded,
      &oes->rx_multicast, &es->rx_multicast);
 i40e_stat_update48(hw, I40E_GLSW_BPRCH(idx), I40E_GLSW_BPRCL(idx),
      veb->stat_offsets_loaded,
      &oes->rx_broadcast, &es->rx_broadcast);

 i40e_stat_update48(hw, I40E_GLSW_GOTCH(idx), I40E_GLSW_GOTCL(idx),
      veb->stat_offsets_loaded,
      &oes->tx_bytes, &es->tx_bytes);
 i40e_stat_update48(hw, I40E_GLSW_UPTCH(idx), I40E_GLSW_UPTCL(idx),
      veb->stat_offsets_loaded,
      &oes->tx_unicast, &es->tx_unicast);
 i40e_stat_update48(hw, I40E_GLSW_MPTCH(idx), I40E_GLSW_MPTCL(idx),
      veb->stat_offsets_loaded,
      &oes->tx_multicast, &es->tx_multicast);
 i40e_stat_update48(hw, I40E_GLSW_BPTCH(idx), I40E_GLSW_BPTCL(idx),
      veb->stat_offsets_loaded,
      &oes->tx_broadcast, &es->tx_broadcast);
 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  i40e_stat_update48(hw, I40E_GLVEBTC_RPCH(i, idx),
       I40E_GLVEBTC_RPCL(i, idx),
       veb->stat_offsets_loaded,
       &veb_oes->tc_rx_packets[i],
       &veb_es->tc_rx_packets[i]);
  i40e_stat_update48(hw, I40E_GLVEBTC_RBCH(i, idx),
       I40E_GLVEBTC_RBCL(i, idx),
       veb->stat_offsets_loaded,
       &veb_oes->tc_rx_bytes[i],
       &veb_es->tc_rx_bytes[i]);
  i40e_stat_update48(hw, I40E_GLVEBTC_TPCH(i, idx),
       I40E_GLVEBTC_TPCL(i, idx),
       veb->stat_offsets_loaded,
       &veb_oes->tc_tx_packets[i],
       &veb_es->tc_tx_packets[i]);
  i40e_stat_update48(hw, I40E_GLVEBTC_TBCH(i, idx),
       I40E_GLVEBTC_TBCL(i, idx),
       veb->stat_offsets_loaded,
       &veb_oes->tc_tx_bytes[i],
       &veb_es->tc_tx_bytes[i]);
 }
 veb->stat_offsets_loaded = 1;
}
