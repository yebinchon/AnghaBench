
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;


 int PR (char*,int ) ;
 int a_aggr ;
 int a_completed ;
 int a_queued_hw ;
 int a_retries ;
 int a_xretries ;
 int completed ;
 int data_underrun ;
 int delim_underrun ;
 int desc_cfg_err ;
 struct ieee80211_hw* dev_get_drvdata (int ) ;
 int fifo_underrun ;
 int puttxbuf ;
 int queued ;
 int seq_printf (struct seq_file*,char*,char*,char*,char*,char*) ;
 int timer_exp ;
 int tx_bytes_all ;
 int tx_pkts_all ;
 int txerr_filtered ;
 int txfailed ;
 int txprocdesc ;
 int txstart ;
 int xretries ;
 int xtxop ;

__attribute__((used)) static int read_file_xmit(struct seq_file *file, void *data)
{
 struct ieee80211_hw *hw = dev_get_drvdata(file->private);
 struct ath_softc *sc = hw->priv;

 seq_printf(file, "%30s %10s%10s%10s\n\n", "BE", "BK", "VI", "VO");

 PR("MPDUs Queued:    ", queued);
 PR("MPDUs Completed: ", completed);
 PR("MPDUs XRetried:  ", xretries);
 PR("Aggregates:      ", a_aggr);
 PR("AMPDUs Queued HW:", a_queued_hw);
 PR("AMPDUs Completed:", a_completed);
 PR("AMPDUs Retried:  ", a_retries);
 PR("AMPDUs XRetried: ", a_xretries);
 PR("TXERR Filtered:  ", txerr_filtered);
 PR("FIFO Underrun:   ", fifo_underrun);
 PR("TXOP Exceeded:   ", xtxop);
 PR("TXTIMER Expiry:  ", timer_exp);
 PR("DESC CFG Error:  ", desc_cfg_err);
 PR("DATA Underrun:   ", data_underrun);
 PR("DELIM Underrun:  ", delim_underrun);
 PR("TX-Pkts-All:     ", tx_pkts_all);
 PR("TX-Bytes-All:    ", tx_bytes_all);
 PR("HW-put-tx-buf:   ", puttxbuf);
 PR("HW-tx-start:     ", txstart);
 PR("HW-tx-proc-desc: ", txprocdesc);
 PR("TX-Failed:       ", txfailed);

 return 0;
}
