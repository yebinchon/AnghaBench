#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  instr_processed; } ;
struct octeon_instr_queue {scalar_t__ octeon_read_index; scalar_t__ flush_index; int /*<<< orphan*/  iq_flush_running_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_db_time; TYPE_2__ stats; int /*<<< orphan*/  instr_pending; int /*<<< orphan*/  pkts_processed; } ;
struct TYPE_3__ {scalar_t__ (* update_iq_read_idx ) (struct octeon_instr_queue*) ;} ;
struct octeon_device {TYPE_1__ fn_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct octeon_device*,struct octeon_instr_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct octeon_instr_queue*) ; 

int
FUNC7(struct octeon_device *oct, struct octeon_instr_queue *iq,
		u32 napi_budget)
{
	u32 inst_processed = 0;
	u32 tot_inst_processed = 0;
	int tx_done = 1;

	if (!FUNC3(&iq->iq_flush_running_lock))
		return tx_done;

	FUNC2(&iq->lock);

	iq->octeon_read_index = oct->fn_list.update_iq_read_idx(iq);

	do {
		/* Process any outstanding IQ packets. */
		if (iq->flush_index == iq->octeon_read_index)
			break;

		if (napi_budget)
			inst_processed =
				FUNC1(oct, iq,
							    napi_budget -
							    tot_inst_processed);
		else
			inst_processed =
				FUNC1(oct, iq, 0);

		if (inst_processed) {
			iq->pkts_processed += inst_processed;
			FUNC0(inst_processed, &iq->instr_pending);
			iq->stats.instr_processed += inst_processed;
		}

		tot_inst_processed += inst_processed;
	} while (tot_inst_processed < napi_budget);

	if (napi_budget && (tot_inst_processed >= napi_budget))
		tx_done = 0;

	iq->last_db_time = jiffies;

	FUNC5(&iq->lock);

	FUNC4(&iq->iq_flush_running_lock);

	return tx_done;
}