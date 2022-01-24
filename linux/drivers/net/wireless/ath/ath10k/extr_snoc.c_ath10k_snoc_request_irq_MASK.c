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
struct ath10k_snoc {TYPE_1__* ce_irqs; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_line; } ;

/* Variables and functions */
 int CE_COUNT_MAX ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/  ath10k_snoc_per_engine_handler ; 
 struct ath10k_snoc* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/ * ce_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ath10k*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ath10k*) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC1(ar);
	int irqflags = IRQF_TRIGGER_RISING;
	int ret, id;

	for (id = 0; id < CE_COUNT_MAX; id++) {
		ret = FUNC3(ar_snoc->ce_irqs[id].irq_line,
				  ath10k_snoc_per_engine_handler,
				  irqflags, ce_name[id], ar);
		if (ret) {
			FUNC0(ar,
				   "failed to register IRQ handler for CE %d: %d",
				   id, ret);
			goto err_irq;
		}
	}

	return 0;

err_irq:
	for (id -= 1; id >= 0; id--)
		FUNC2(ar_snoc->ce_irqs[id].irq_line, ar);

	return ret;
}