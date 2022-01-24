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
typedef  int u8 ;
struct TYPE_2__ {int error_int_status; } ;
struct ath6kl_device {int /*<<< orphan*/  ar; TYPE_1__ irq_proc_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_IRQ ; 
 int EIO ; 
 int /*<<< orphan*/  ERROR_INT_STATUS_ADDRESS ; 
 int /*<<< orphan*/  ERROR_INT_STATUS_RX_UNDERFLOW ; 
 int /*<<< orphan*/  ERROR_INT_STATUS_TX_OVERFLOW ; 
 int /*<<< orphan*/  ERROR_INT_STATUS_WAKEUP ; 
 int /*<<< orphan*/  HIF_WR_SYNC_BYTE_FIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_device *dev)
{
	int status;
	u8 error_int_status;
	u8 reg_buf[4];

	FUNC2(ATH6KL_DBG_IRQ, "error interrupt\n");

	error_int_status = dev->irq_proc_reg.error_int_status & 0x0F;
	if (!error_int_status) {
		FUNC1(1);
		return -EIO;
	}

	FUNC2(ATH6KL_DBG_IRQ,
		   "valid interrupt source(s) in ERROR_INT_STATUS: 0x%x\n",
		   error_int_status);

	if (FUNC0(ERROR_INT_STATUS_WAKEUP, error_int_status))
		FUNC2(ATH6KL_DBG_IRQ, "error : wakeup\n");

	if (FUNC0(ERROR_INT_STATUS_RX_UNDERFLOW, error_int_status))
		FUNC3("rx underflow\n");

	if (FUNC0(ERROR_INT_STATUS_TX_OVERFLOW, error_int_status))
		FUNC3("tx overflow\n");

	/* Clear the interrupt */
	dev->irq_proc_reg.error_int_status &= ~error_int_status;

	/* set W1C value to clear the interrupt, this hits the register first */
	reg_buf[0] = error_int_status;
	reg_buf[1] = 0;
	reg_buf[2] = 0;
	reg_buf[3] = 0;

	status = FUNC4(dev->ar, ERROR_INT_STATUS_ADDRESS,
				     reg_buf, 4, HIF_WR_SYNC_BYTE_FIX);

	FUNC1(status);

	return status;
}