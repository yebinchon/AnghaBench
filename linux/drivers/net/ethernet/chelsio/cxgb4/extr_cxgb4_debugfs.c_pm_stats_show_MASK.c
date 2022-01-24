#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int PM_NSTATS ; 
 int T6_PM_NSTATS ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char const* const,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	static const char * const tx_pm_stats[] = {
		"Read:", "Write bypass:", "Write mem:", "Bypass + mem:"
	};
	static const char * const rx_pm_stats[] = {
		"Read:", "Write bypass:", "Write mem:", "Flush:"
	};

	int i;
	u32 tx_cnt[T6_PM_NSTATS], rx_cnt[T6_PM_NSTATS];
	u64 tx_cyc[T6_PM_NSTATS], rx_cyc[T6_PM_NSTATS];
	struct adapter *adap = seq->private;

	FUNC3(adap, tx_cnt, tx_cyc);
	FUNC2(adap, rx_cnt, rx_cyc);

	FUNC1(seq, "%13s %10s  %20s\n", " ", "Tx pcmds", "Tx bytes");
	for (i = 0; i < PM_NSTATS - 1; i++)
		FUNC1(seq, "%-13s %10u  %20llu\n",
			   tx_pm_stats[i], tx_cnt[i], tx_cyc[i]);

	FUNC1(seq, "%13s %10s  %20s\n", " ", "Rx pcmds", "Rx bytes");
	for (i = 0; i < PM_NSTATS - 1; i++)
		FUNC1(seq, "%-13s %10u  %20llu\n",
			   rx_pm_stats[i], rx_cnt[i], rx_cyc[i]);

	if (FUNC0(adap->params.chip) > CHELSIO_T5) {
		/* In T5 the granularity of the total wait is too fine.
		 * It is not useful as it reaches the max value too fast.
		 * Hence display this Input FIFO wait for T6 onwards.
		 */
		FUNC1(seq, "%13s %10s  %20s\n",
			   " ", "Total wait", "Total Occupancy");
		FUNC1(seq, "Tx FIFO wait  %10u  %20llu\n",
			   tx_cnt[i], tx_cyc[i]);
		FUNC1(seq, "Rx FIFO wait  %10u  %20llu\n",
			   rx_cnt[i], rx_cyc[i]);

		/* Skip index 6 as there is nothing useful ihere */
		i += 2;

		/* At index 7, a new stat for read latency (count, total wait)
		 * is added.
		 */
		FUNC1(seq, "%13s %10s  %20s\n",
			   " ", "Reads", "Total wait");
		FUNC1(seq, "Tx latency    %10u  %20llu\n",
			   tx_cnt[i], tx_cyc[i]);
		FUNC1(seq, "Rx latency    %10u  %20llu\n",
			   rx_cnt[i], rx_cyc[i]);
	}
	return 0;
}