#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath6kl_irq_proc_registers {int host_int_status; int rx_lkahd_valid; int /*<<< orphan*/ * rx_lkahd; } ;
struct TYPE_4__ {int int_status_en; } ;
struct ath6kl_device {TYPE_2__* htc_cnxt; struct ath6kl_irq_proc_registers irq_proc_reg; TYPE_1__ irq_en_reg; int /*<<< orphan*/  ar; } ;
struct TYPE_5__ {scalar_t__ chk_irq_status_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_IRQ ; 
 int /*<<< orphan*/  HIF_RD_SYNC_BYTE_INC ; 
 int /*<<< orphan*/  HOST_INT_STATUS_ADDRESS ; 
 int /*<<< orphan*/  HOST_INT_STATUS_COUNTER ; 
 int /*<<< orphan*/  HOST_INT_STATUS_CPU ; 
 int /*<<< orphan*/  HOST_INT_STATUS_ERROR ; 
 int HTC_MAILBOX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_device*,struct ath6kl_irq_proc_registers*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct ath6kl_device*) ; 
 int FUNC5 (struct ath6kl_device*) ; 
 int FUNC6 (struct ath6kl_device*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC11(struct ath6kl_device *dev, bool *done)
{
	struct ath6kl_irq_proc_registers *rg;
	int status = 0;
	u8 host_int_status = 0;
	u32 lk_ahd = 0;
	u8 htc_mbox = 1 << HTC_MAILBOX;

	FUNC1(ATH6KL_DBG_IRQ, "proc_pending_irqs: (dev: 0x%p)\n", dev);

	/*
	 * NOTE: HIF implementation guarantees that the context of this
	 * call allows us to perform SYNCHRONOUS I/O, that is we can block,
	 * sleep or call any API that can block or switch thread/task
	 * contexts. This is a fully schedulable context.
	 */

	/*
	 * Process pending intr only when int_status_en is clear, it may
	 * result in unnecessary bus transaction otherwise. Target may be
	 * unresponsive at the time.
	 */
	if (dev->irq_en_reg.int_status_en) {
		/*
		 * Read the first 28 bytes of the HTC register table. This
		 * will yield us the value of different int status
		 * registers and the lookahead registers.
		 *
		 *    length = sizeof(int_status) + sizeof(cpu_int_status)
		 *             + sizeof(error_int_status) +
		 *             sizeof(counter_int_status) +
		 *             sizeof(mbox_frame) + sizeof(rx_lkahd_valid)
		 *             + sizeof(hole) + sizeof(rx_lkahd) +
		 *             sizeof(int_status_en) +
		 *             sizeof(cpu_int_status_en) +
		 *             sizeof(err_int_status_en) +
		 *             sizeof(cntr_int_status_en);
		 */
		status = FUNC8(dev->ar, HOST_INT_STATUS_ADDRESS,
					     (u8 *) &dev->irq_proc_reg,
					     sizeof(dev->irq_proc_reg),
					     HIF_RD_SYNC_BYTE_INC);
		if (status)
			goto out;

		FUNC2(dev, &dev->irq_proc_reg,
				      &dev->irq_en_reg);
		FUNC10(&dev->irq_en_reg,
				      sizeof(dev->irq_en_reg));

		/* Update only those registers that are enabled */
		host_int_status = dev->irq_proc_reg.host_int_status &
				  dev->irq_en_reg.int_status_en;

		/* Look at mbox status */
		if (host_int_status & htc_mbox) {
			/*
			 * Mask out pending mbox value, we use "lookAhead as
			 * the real flag for mbox processing.
			 */
			host_int_status &= ~htc_mbox;
			if (dev->irq_proc_reg.rx_lkahd_valid &
			    htc_mbox) {
				rg = &dev->irq_proc_reg;
				lk_ahd = FUNC9(rg->rx_lkahd[HTC_MAILBOX]);
				if (!lk_ahd)
					FUNC3("lookAhead is zero!\n");
			}
		}
	}

	if (!host_int_status && !lk_ahd) {
		*done = true;
		goto out;
	}

	if (lk_ahd) {
		int fetched = 0;

		FUNC1(ATH6KL_DBG_IRQ,
			   "pending mailbox msg, lk_ahd: 0x%X\n", lk_ahd);
		/*
		 * Mailbox Interrupt, the HTC layer may issue async
		 * requests to empty the mailbox. When emptying the recv
		 * mailbox we use the async handler above called from the
		 * completion routine of the callers read request. This can
		 * improve performance by reducing context switching when
		 * we rapidly pull packets.
		 */
		status = FUNC7(dev->htc_cnxt,
							  lk_ahd, &fetched);
		if (status)
			goto out;

		if (!fetched)
			/*
			 * HTC could not pull any messages out due to lack
			 * of resources.
			 */
			dev->htc_cnxt->chk_irq_status_cnt = 0;
	}

	/* now handle the rest of them */
	FUNC1(ATH6KL_DBG_IRQ,
		   "valid interrupt source(s) for other interrupts: 0x%x\n",
		   host_int_status);

	if (FUNC0(HOST_INT_STATUS_CPU, host_int_status)) {
		/* CPU Interrupt */
		status = FUNC5(dev);
		if (status)
			goto out;
	}

	if (FUNC0(HOST_INT_STATUS_ERROR, host_int_status)) {
		/* Error Interrupt */
		status = FUNC6(dev);
		if (status)
			goto out;
	}

	if (FUNC0(HOST_INT_STATUS_COUNTER, host_int_status))
		/* Counter Interrupt */
		status = FUNC4(dev);

out:
	/*
	 * An optimization to bypass reading the IRQ status registers
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

	FUNC1(ATH6KL_DBG_IRQ,
		   "bypassing irq status re-check, forcing done\n");

	if (!dev->htc_cnxt->chk_irq_status_cnt)
		*done = true;

	FUNC1(ATH6KL_DBG_IRQ,
		   "proc_pending_irqs: (done:%d, status=%d\n", *done, status);

	return status;
}