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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_HOST_INT_STATUS_COUNTER_MASK ; 
 int /*<<< orphan*/  MBOX_HOST_INT_STATUS_CPU_MASK ; 
 int /*<<< orphan*/  MBOX_HOST_INT_STATUS_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (struct ath10k*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar,
					      bool *done)
{
	u8 host_int_status;
	u32 lookahead;
	int ret;

	/* NOTE: HIF implementation guarantees that the context of this
	 * call allows us to perform SYNCHRONOUS I/O, that is we can block,
	 * sleep or call any API that can block or switch thread/task
	 * contexts. This is a fully schedulable context.
	 */

	ret = FUNC5(ar,
					       &host_int_status,
					       &lookahead);
	if (ret) {
		*done = true;
		goto out;
	}

	if (!host_int_status && !lookahead) {
		ret = 0;
		*done = true;
		goto out;
	}

	if (lookahead) {
		FUNC1(ar, ATH10K_DBG_SDIO,
			   "sdio pending mailbox msg lookahead 0x%08x\n",
			   lookahead);

		ret = FUNC6(ar,
							     lookahead,
							     done);
		if (ret)
			goto out;
	}

	/* now, handle the rest of the interrupts */
	FUNC1(ar, ATH10K_DBG_SDIO,
		   "sdio host_int_status 0x%x\n", host_int_status);

	if (FUNC0(MBOX_HOST_INT_STATUS_CPU_MASK, host_int_status)) {
		/* CPU Interrupt */
		ret = FUNC3(ar);
		if (ret)
			goto out;
	}

	if (FUNC0(MBOX_HOST_INT_STATUS_ERROR_MASK, host_int_status)) {
		/* Error Interrupt */
		ret = FUNC4(ar);
		if (ret)
			goto out;
	}

	if (FUNC0(MBOX_HOST_INT_STATUS_COUNTER_MASK, host_int_status))
		/* Counter Interrupt */
		ret = FUNC2(ar);

	ret = 0;

out:
	/* An optimization to bypass reading the IRQ status registers
	 * unecessarily which can re-wake the target, if upper layers
	 * determine that we are in a low-throughput mode, we can rely on
	 * taking another interrupt rather than re-checking the status
	 * registers which can re-wake the target.
	 *
	 * NOTE : for host interfaces that makes use of detecting pending
	 * mbox messages at hif can not use this optimization due to
	 * possible side effects, SPI requires the host to drain all
	 * messages from the mailbox before exiting the ISR routine.
	 */

	FUNC1(ar, ATH10K_DBG_SDIO,
		   "sdio pending irqs done %d status %d",
		   *done, ret);

	return ret;
}