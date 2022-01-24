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
struct ath10k_sdio_irq_data {TYPE_1__* irq_proc_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int error_int_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SDIO ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MBOX_ERROR_INT_STATUS_ADDRESS ; 
 int /*<<< orphan*/  MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK ; 
 int /*<<< orphan*/  MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK ; 
 int /*<<< orphan*/  MBOX_ERROR_INT_STATUS_WAKEUP_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 struct ath10k_sdio* FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC2(ar);
	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
	u8 error_int_status;
	int ret;

	FUNC1(ar, ATH10K_DBG_SDIO, "sdio error interrupt\n");

	error_int_status = irq_data->irq_proc_reg->error_int_status & 0x0F;
	if (!error_int_status) {
		FUNC4(ar, "invalid error interrupt status: 0x%x\n",
			    error_int_status);
		return -EIO;
	}

	FUNC1(ar, ATH10K_DBG_SDIO,
		   "sdio error_int_status 0x%x\n", error_int_status);

	if (FUNC0(MBOX_ERROR_INT_STATUS_WAKEUP_MASK,
		      error_int_status))
		FUNC1(ar, ATH10K_DBG_SDIO, "sdio interrupt error wakeup\n");

	if (FUNC0(MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK,
		      error_int_status))
		FUNC4(ar, "rx underflow interrupt error\n");

	if (FUNC0(MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK,
		      error_int_status))
		FUNC4(ar, "tx overflow interrupt error\n");

	/* Clear the interrupt */
	irq_data->irq_proc_reg->error_int_status &= ~error_int_status;

	/* set W1C value to clear the interrupt, this hits the register first */
	ret = FUNC3(ar, MBOX_ERROR_INT_STATUS_ADDRESS,
				    error_int_status);
	if (ret) {
		FUNC4(ar, "unable to write to error int status address: %d\n",
			    ret);
		return ret;
	}

	return 0;
}