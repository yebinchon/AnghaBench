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
typedef  size_t u32 ;
struct octeon_instr_queue {scalar_t__ fill_cnt; int /*<<< orphan*/  post_lock; scalar_t__ allow_soft_cmds; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; } ;
struct iq_post_status {scalar_t__ status; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IQ_SEND_FAILED ; 
 scalar_t__ IQ_SEND_STOP ; 
 scalar_t__ MAX_OCTEON_FILL_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_instr_queue*,int /*<<< orphan*/ ,void*,size_t) ; 
 struct iq_post_status FUNC2 (struct octeon_instr_queue*,void*) ; 
 int /*<<< orphan*/  bytes_sent ; 
 int /*<<< orphan*/  instr_dropped ; 
 int /*<<< orphan*/  instr_posted ; 
 int FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_instr_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct octeon_device *oct, u32 iq_no,
		    u32 force_db, void *cmd, void *buf,
		    u32 datasize, u32 reqtype)
{
	int xmit_stopped;
	struct iq_post_status st;
	struct octeon_instr_queue *iq = oct->instr_queue[iq_no];

	/* Get the lock and prevent other tasks and tx interrupt handler from
	 * running.
	 */
	if (iq->allow_soft_cmds)
		FUNC5(&iq->post_lock);

	st = FUNC2(iq, cmd);

	if (st.status != IQ_SEND_FAILED) {
		xmit_stopped = FUNC3(buf, reqtype);
		FUNC1(iq, st.index, buf, reqtype);
		FUNC0(oct, iq_no, bytes_sent, datasize);
		FUNC0(oct, iq_no, instr_posted, 1);

		if (iq->fill_cnt >= MAX_OCTEON_FILL_COUNT || force_db ||
		    xmit_stopped || st.status == IQ_SEND_STOP)
			FUNC4(oct, iq);
	} else {
		FUNC0(oct, iq_no, instr_dropped, 1);
	}

	if (iq->allow_soft_cmds)
		FUNC6(&iq->post_lock);

	/* This is only done here to expedite packets being flushed
	 * for cases where there are no IQ completion interrupts.
	 */

	return st.status;
}