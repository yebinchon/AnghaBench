#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a_aggr ; 
 int /*<<< orphan*/  a_completed ; 
 int /*<<< orphan*/  a_queued_hw ; 
 int /*<<< orphan*/  a_retries ; 
 int /*<<< orphan*/  a_xretries ; 
 int /*<<< orphan*/  completed ; 
 int /*<<< orphan*/  data_underrun ; 
 int /*<<< orphan*/  delim_underrun ; 
 int /*<<< orphan*/  desc_cfg_err ; 
 struct ieee80211_hw* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fifo_underrun ; 
 int /*<<< orphan*/  puttxbuf ; 
 int /*<<< orphan*/  queued ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  timer_exp ; 
 int /*<<< orphan*/  tx_bytes_all ; 
 int /*<<< orphan*/  tx_pkts_all ; 
 int /*<<< orphan*/  txerr_filtered ; 
 int /*<<< orphan*/  txfailed ; 
 int /*<<< orphan*/  txprocdesc ; 
 int /*<<< orphan*/  txstart ; 
 int /*<<< orphan*/  xretries ; 
 int /*<<< orphan*/  xtxop ; 

__attribute__((used)) static int FUNC3(struct seq_file *file, void *data)
{
	struct ieee80211_hw *hw = FUNC1(file->private);
	struct ath_softc *sc = hw->priv;

	FUNC2(file, "%30s %10s%10s%10s\n\n", "BE", "BK", "VI", "VO");

	FUNC0("MPDUs Queued:    ", queued);
	FUNC0("MPDUs Completed: ", completed);
	FUNC0("MPDUs XRetried:  ", xretries);
	FUNC0("Aggregates:      ", a_aggr);
	FUNC0("AMPDUs Queued HW:", a_queued_hw);
	FUNC0("AMPDUs Completed:", a_completed);
	FUNC0("AMPDUs Retried:  ", a_retries);
	FUNC0("AMPDUs XRetried: ", a_xretries);
	FUNC0("TXERR Filtered:  ", txerr_filtered);
	FUNC0("FIFO Underrun:   ", fifo_underrun);
	FUNC0("TXOP Exceeded:   ", xtxop);
	FUNC0("TXTIMER Expiry:  ", timer_exp);
	FUNC0("DESC CFG Error:  ", desc_cfg_err);
	FUNC0("DATA Underrun:   ", data_underrun);
	FUNC0("DELIM Underrun:  ", delim_underrun);
	FUNC0("TX-Pkts-All:     ", tx_pkts_all);
	FUNC0("TX-Bytes-All:    ", tx_bytes_all);
	FUNC0("HW-put-tx-buf:   ", puttxbuf);
	FUNC0("HW-tx-start:     ", txstart);
	FUNC0("HW-tx-proc-desc: ", txprocdesc);
	FUNC0("TX-Failed:       ", txfailed);

	return 0;
}