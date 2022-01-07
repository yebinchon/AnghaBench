
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_cfg {int tx_pad_crc; int ptp_tsu_en; int ptp_exception_en; int maximum_frame; int back_to_back_ipg; int min_ifg_enforcement; int non_back_to_back_ipg2; int non_back_to_back_ipg1; int tx_pause_time_extd; int preamble_len; int rx_prepend; int tx_pause_time; int halfdup_coll_window; int halfdup_retransmit; } ;


 int DEFAULT_BACK_TO_BACK_IPG ;
 int DEFAULT_HALFDUP_COLL_WINDOW ;
 int DEFAULT_HALFDUP_RETRANSMIT ;
 int DEFAULT_MAXIMUM_FRAME ;
 int DEFAULT_MIN_IFG_ENFORCEMENT ;
 int DEFAULT_NON_BACK_TO_BACK_IPG1 ;
 int DEFAULT_NON_BACK_TO_BACK_IPG2 ;
 int DEFAULT_PREAMBLE_LEN ;
 int DEFAULT_RX_PREPEND ;
 int DEFAULT_TX_PAUSE_TIME ;
 int DEFAULT_TX_PAUSE_TIME_EXTD ;

__attribute__((used)) static void set_dflts(struct dtsec_cfg *cfg)
{
 cfg->halfdup_retransmit = DEFAULT_HALFDUP_RETRANSMIT;
 cfg->halfdup_coll_window = DEFAULT_HALFDUP_COLL_WINDOW;
 cfg->tx_pad_crc = 1;
 cfg->tx_pause_time = DEFAULT_TX_PAUSE_TIME;

 cfg->rx_prepend = DEFAULT_RX_PREPEND;
 cfg->ptp_tsu_en = 1;
 cfg->ptp_exception_en = 1;
 cfg->preamble_len = DEFAULT_PREAMBLE_LEN;
 cfg->tx_pause_time_extd = DEFAULT_TX_PAUSE_TIME_EXTD;
 cfg->non_back_to_back_ipg1 = DEFAULT_NON_BACK_TO_BACK_IPG1;
 cfg->non_back_to_back_ipg2 = DEFAULT_NON_BACK_TO_BACK_IPG2;
 cfg->min_ifg_enforcement = DEFAULT_MIN_IFG_ENFORCEMENT;
 cfg->back_to_back_ipg = DEFAULT_BACK_TO_BACK_IPG;
 cfg->maximum_frame = DEFAULT_MAXIMUM_FRAME;
}
