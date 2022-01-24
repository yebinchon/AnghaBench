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
struct ath10k_sdio_irq_enable_regs {int /*<<< orphan*/  int_status_en; } ;
struct ath10k_sdio_irq_data {int /*<<< orphan*/  mtx; struct ath10k_sdio_irq_enable_regs* irq_en_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBOX_INT_STATUS_ENABLE_ADDRESS ; 
 struct ath10k_sdio* FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k_sdio_irq_enable_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC0(ar);
	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
	struct ath10k_sdio_irq_enable_regs *regs = irq_data->irq_en_reg;
	int ret;

	FUNC4(&irq_data->mtx);

	FUNC3(regs, 0, sizeof(*regs));
	ret = FUNC1(ar, MBOX_INT_STATUS_ENABLE_ADDRESS,
				&regs->int_status_en, sizeof(*regs));
	if (ret)
		FUNC2(ar, "unable to disable sdio interrupts: %d\n", ret);

	FUNC5(&irq_data->mtx);

	return ret;
}