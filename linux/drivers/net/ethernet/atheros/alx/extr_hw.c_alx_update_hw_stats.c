
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int update; int tx_mc_byte_cnt; int tx_bc_byte_cnt; int tx_trunc; int tx_len_err; int tx_trd_eop; int tx_underrun; int tx_abort_col; int tx_late_col; int tx_multi_col; int tx_single_col; int tx_sz_max; int tx_sz_1518B; int tx_sz_1023B; int tx_sz_511B; int tx_sz_255B; int tx_sz_127B; int tx_sz_64B; int tx_byte_cnt; int tx_defer; int tx_ctrl; int tx_exc_defer; int tx_pause; int tx_mcast; int tx_bcast; int tx_ok; int rx_err_addr; int rx_mc_byte_cnt; int rx_bc_byte_cnt; int rx_align_err; int rx_ov_rrd; int rx_ov_rxf; int rx_ov_sz; int rx_sz_max; int rx_sz_1518B; int rx_sz_1023B; int rx_sz_511B; int rx_sz_255B; int rx_sz_127B; int rx_sz_64B; int rx_frag; int rx_runt; int rx_byte_cnt; int rx_len_err; int rx_fcs_err; int rx_ctrl; int rx_pause; int rx_mcast; int rx_bcast; int rx_ok; } ;
struct alx_hw {TYPE_1__ stats; } ;


 int ALX_MIB_RX_ALIGN_ERR ;
 int ALX_MIB_RX_BCAST ;
 int ALX_MIB_RX_BCCNT ;
 int ALX_MIB_RX_BYTE_CNT ;
 int ALX_MIB_RX_CTRL ;
 int ALX_MIB_RX_ERRADDR ;
 int ALX_MIB_RX_FCS_ERR ;
 int ALX_MIB_RX_FRAG ;
 int ALX_MIB_RX_LEN_ERR ;
 int ALX_MIB_RX_MCAST ;
 int ALX_MIB_RX_MCCNT ;
 int ALX_MIB_RX_OK ;
 int ALX_MIB_RX_OV_RRD ;
 int ALX_MIB_RX_OV_RXF ;
 int ALX_MIB_RX_OV_SZ ;
 int ALX_MIB_RX_PAUSE ;
 int ALX_MIB_RX_RUNT ;
 int ALX_MIB_RX_SZ_1023B ;
 int ALX_MIB_RX_SZ_127B ;
 int ALX_MIB_RX_SZ_1518B ;
 int ALX_MIB_RX_SZ_255B ;
 int ALX_MIB_RX_SZ_511B ;
 int ALX_MIB_RX_SZ_64B ;
 int ALX_MIB_RX_SZ_MAX ;
 int ALX_MIB_TX_ABORT_COL ;
 int ALX_MIB_TX_BCAST ;
 int ALX_MIB_TX_BCCNT ;
 int ALX_MIB_TX_BYTE_CNT ;
 int ALX_MIB_TX_CTRL ;
 int ALX_MIB_TX_DEFER ;
 int ALX_MIB_TX_EXC_DEFER ;
 int ALX_MIB_TX_LATE_COL ;
 int ALX_MIB_TX_LEN_ERR ;
 int ALX_MIB_TX_MCAST ;
 int ALX_MIB_TX_MCCNT ;
 int ALX_MIB_TX_MULTI_COL ;
 int ALX_MIB_TX_OK ;
 int ALX_MIB_TX_PAUSE ;
 int ALX_MIB_TX_SINGLE_COL ;
 int ALX_MIB_TX_SZ_1023B ;
 int ALX_MIB_TX_SZ_127B ;
 int ALX_MIB_TX_SZ_1518B ;
 int ALX_MIB_TX_SZ_255B ;
 int ALX_MIB_TX_SZ_511B ;
 int ALX_MIB_TX_SZ_64B ;
 int ALX_MIB_TX_SZ_MAX ;
 int ALX_MIB_TX_TRD_EOP ;
 int ALX_MIB_TX_TRUNC ;
 int ALX_MIB_TX_UNDERRUN ;
 int ALX_MIB_UPDATE ;
 scalar_t__ alx_read_mem32 (struct alx_hw*,int ) ;

void alx_update_hw_stats(struct alx_hw *hw)
{

 hw->stats.rx_ok += alx_read_mem32(hw, ALX_MIB_RX_OK);
 hw->stats.rx_bcast += alx_read_mem32(hw, ALX_MIB_RX_BCAST);
 hw->stats.rx_mcast += alx_read_mem32(hw, ALX_MIB_RX_MCAST);
 hw->stats.rx_pause += alx_read_mem32(hw, ALX_MIB_RX_PAUSE);
 hw->stats.rx_ctrl += alx_read_mem32(hw, ALX_MIB_RX_CTRL);
 hw->stats.rx_fcs_err += alx_read_mem32(hw, ALX_MIB_RX_FCS_ERR);
 hw->stats.rx_len_err += alx_read_mem32(hw, ALX_MIB_RX_LEN_ERR);
 hw->stats.rx_byte_cnt += alx_read_mem32(hw, ALX_MIB_RX_BYTE_CNT);
 hw->stats.rx_runt += alx_read_mem32(hw, ALX_MIB_RX_RUNT);
 hw->stats.rx_frag += alx_read_mem32(hw, ALX_MIB_RX_FRAG);
 hw->stats.rx_sz_64B += alx_read_mem32(hw, ALX_MIB_RX_SZ_64B);
 hw->stats.rx_sz_127B += alx_read_mem32(hw, ALX_MIB_RX_SZ_127B);
 hw->stats.rx_sz_255B += alx_read_mem32(hw, ALX_MIB_RX_SZ_255B);
 hw->stats.rx_sz_511B += alx_read_mem32(hw, ALX_MIB_RX_SZ_511B);
 hw->stats.rx_sz_1023B += alx_read_mem32(hw, ALX_MIB_RX_SZ_1023B);
 hw->stats.rx_sz_1518B += alx_read_mem32(hw, ALX_MIB_RX_SZ_1518B);
 hw->stats.rx_sz_max += alx_read_mem32(hw, ALX_MIB_RX_SZ_MAX);
 hw->stats.rx_ov_sz += alx_read_mem32(hw, ALX_MIB_RX_OV_SZ);
 hw->stats.rx_ov_rxf += alx_read_mem32(hw, ALX_MIB_RX_OV_RXF);
 hw->stats.rx_ov_rrd += alx_read_mem32(hw, ALX_MIB_RX_OV_RRD);
 hw->stats.rx_align_err += alx_read_mem32(hw, ALX_MIB_RX_ALIGN_ERR);
 hw->stats.rx_bc_byte_cnt += alx_read_mem32(hw, ALX_MIB_RX_BCCNT);
 hw->stats.rx_mc_byte_cnt += alx_read_mem32(hw, ALX_MIB_RX_MCCNT);
 hw->stats.rx_err_addr += alx_read_mem32(hw, ALX_MIB_RX_ERRADDR);


 hw->stats.tx_ok += alx_read_mem32(hw, ALX_MIB_TX_OK);
 hw->stats.tx_bcast += alx_read_mem32(hw, ALX_MIB_TX_BCAST);
 hw->stats.tx_mcast += alx_read_mem32(hw, ALX_MIB_TX_MCAST);
 hw->stats.tx_pause += alx_read_mem32(hw, ALX_MIB_TX_PAUSE);
 hw->stats.tx_exc_defer += alx_read_mem32(hw, ALX_MIB_TX_EXC_DEFER);
 hw->stats.tx_ctrl += alx_read_mem32(hw, ALX_MIB_TX_CTRL);
 hw->stats.tx_defer += alx_read_mem32(hw, ALX_MIB_TX_DEFER);
 hw->stats.tx_byte_cnt += alx_read_mem32(hw, ALX_MIB_TX_BYTE_CNT);
 hw->stats.tx_sz_64B += alx_read_mem32(hw, ALX_MIB_TX_SZ_64B);
 hw->stats.tx_sz_127B += alx_read_mem32(hw, ALX_MIB_TX_SZ_127B);
 hw->stats.tx_sz_255B += alx_read_mem32(hw, ALX_MIB_TX_SZ_255B);
 hw->stats.tx_sz_511B += alx_read_mem32(hw, ALX_MIB_TX_SZ_511B);
 hw->stats.tx_sz_1023B += alx_read_mem32(hw, ALX_MIB_TX_SZ_1023B);
 hw->stats.tx_sz_1518B += alx_read_mem32(hw, ALX_MIB_TX_SZ_1518B);
 hw->stats.tx_sz_max += alx_read_mem32(hw, ALX_MIB_TX_SZ_MAX);
 hw->stats.tx_single_col += alx_read_mem32(hw, ALX_MIB_TX_SINGLE_COL);
 hw->stats.tx_multi_col += alx_read_mem32(hw, ALX_MIB_TX_MULTI_COL);
 hw->stats.tx_late_col += alx_read_mem32(hw, ALX_MIB_TX_LATE_COL);
 hw->stats.tx_abort_col += alx_read_mem32(hw, ALX_MIB_TX_ABORT_COL);
 hw->stats.tx_underrun += alx_read_mem32(hw, ALX_MIB_TX_UNDERRUN);
 hw->stats.tx_trd_eop += alx_read_mem32(hw, ALX_MIB_TX_TRD_EOP);
 hw->stats.tx_len_err += alx_read_mem32(hw, ALX_MIB_TX_LEN_ERR);
 hw->stats.tx_trunc += alx_read_mem32(hw, ALX_MIB_TX_TRUNC);
 hw->stats.tx_bc_byte_cnt += alx_read_mem32(hw, ALX_MIB_TX_BCCNT);
 hw->stats.tx_mc_byte_cnt += alx_read_mem32(hw, ALX_MIB_TX_MCCNT);

 hw->stats.update += alx_read_mem32(hw, ALX_MIB_UPDATE);
}
