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
typedef  int u8 ;
struct ath10k_sdio_irq_data {int /*<<< orphan*/  mtx; TYPE_2__* irq_proc_reg; TYPE_1__* irq_en_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int /*<<< orphan*/  restart_work; int /*<<< orphan*/  workqueue; } ;
struct TYPE_4__ {int cpu_int_status; } ;
struct TYPE_3__ {int cpu_int_status_en; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MBOX_CPU_INT_STATUS_ADDRESS ; 
 int MBOX_CPU_STATUS_ENABLE_ASSERT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
	u8 cpu_int_status;
	int ret;

	FUNC4(&irq_data->mtx);
	cpu_int_status = irq_data->irq_proc_reg->cpu_int_status &
			 irq_data->irq_en_reg->cpu_int_status_en;
	if (!cpu_int_status) {
		FUNC3(ar, "CPU interrupt status is zero\n");
		ret = -EIO;
		goto out;
	}

	/* Clear the interrupt */
	irq_data->irq_proc_reg->cpu_int_status &= ~cpu_int_status;

	/* Set up the register transfer buffer to hit the register 4 times,
	 * this is done to make the access 4-byte aligned to mitigate issues
	 * with host bus interconnects that restrict bus transfer lengths to
	 * be a multiple of 4-bytes.
	 *
	 * Set W1C value to clear the interrupt, this hits the register first.
	 */
	ret = FUNC2(ar, MBOX_CPU_INT_STATUS_ADDRESS,
				    cpu_int_status);
	if (ret) {
		FUNC3(ar, "unable to write to cpu interrupt status address: %d\n",
			    ret);
		goto out;
	}

out:
	FUNC5(&irq_data->mtx);
	if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
		FUNC0(ar, "firmware crashed!\n");
		FUNC6(ar->workqueue, &ar->restart_work);
	}
	return ret;
}