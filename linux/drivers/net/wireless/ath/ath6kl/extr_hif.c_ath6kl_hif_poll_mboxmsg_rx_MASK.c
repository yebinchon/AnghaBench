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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath6kl_irq_proc_registers {int host_int_status; int rx_lkahd_valid; int counter_int_status; int /*<<< orphan*/ * rx_lkahd; } ;
struct ath6kl_device {struct ath6kl_irq_proc_registers irq_proc_reg; int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HIF ; 
 int ATH6KL_TARGET_DEBUG_INTR_MASK ; 
 int ATH6KL_TIME_QUANTUM ; 
 int ETIME ; 
 int /*<<< orphan*/  HIF_RD_SYNC_BYTE_INC ; 
 int /*<<< orphan*/  HOST_INT_STATUS_ADDRESS ; 
 int HTC_MAILBOX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct ath6kl_device *dev, u32 *lk_ahd,
			      int timeout)
{
	struct ath6kl_irq_proc_registers *rg;
	int status = 0, i;
	u8 htc_mbox = 1 << HTC_MAILBOX;

	for (i = timeout / ATH6KL_TIME_QUANTUM; i > 0; i--) {
		/* this is the standard HIF way, load the reg table */
		status = FUNC3(dev->ar, HOST_INT_STATUS_ADDRESS,
					     (u8 *) &dev->irq_proc_reg,
					     sizeof(dev->irq_proc_reg),
					     HIF_RD_SYNC_BYTE_INC);

		if (status) {
			FUNC1("failed to read reg table\n");
			return status;
		}

		/* check for MBOX data and valid lookahead */
		if (dev->irq_proc_reg.host_int_status & htc_mbox) {
			if (dev->irq_proc_reg.rx_lkahd_valid &
			    htc_mbox) {
				/*
				 * Mailbox has a message and the look ahead
				 * is valid.
				 */
				rg = &dev->irq_proc_reg;
				*lk_ahd =
					FUNC4(rg->rx_lkahd[HTC_MAILBOX]);
				break;
			}
		}

		/* delay a little  */
		FUNC5(ATH6KL_TIME_QUANTUM);
		FUNC0(ATH6KL_DBG_HIF, "hif retry mbox poll try %d\n", i);
	}

	if (i == 0) {
		FUNC1("timeout waiting for recv message\n");
		status = -ETIME;
		/* check if the target asserted */
		if (dev->irq_proc_reg.counter_int_status &
		    ATH6KL_TARGET_DEBUG_INTR_MASK)
			/*
			 * Target failure handler will be called in case of
			 * an assert.
			 */
			FUNC2(dev);
	}

	return status;
}