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
struct ath10k_sdio_irq_data {int /*<<< orphan*/  mtx; TYPE_2__* irq_en_reg; TYPE_1__* irq_proc_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int cntr_int_status_en; } ;
struct TYPE_3__ {int counter_int_status; } ;

/* Variables and functions */
 int ATH10K_SDIO_TARGET_DEBUG_INTR_MASK ; 
 int FUNC0 (struct ath10k*) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
	u8 counter_int_status;
	int ret;

	FUNC2(&irq_data->mtx);
	counter_int_status = irq_data->irq_proc_reg->counter_int_status &
			     irq_data->irq_en_reg->cntr_int_status_en;

	/* NOTE: other modules like GMBOX may use the counter interrupt for
	 * credit flow control on other counters, we only need to check for
	 * the debug assertion counter interrupt.
	 */
	if (counter_int_status & ATH10K_SDIO_TARGET_DEBUG_INTR_MASK)
		ret = FUNC0(ar);
	else
		ret = 0;

	FUNC3(&irq_data->mtx);

	return ret;
}