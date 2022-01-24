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
 struct ath10k_snoc* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ath10k*) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC0(ar);
	int id;

	for (id = 0; id < CE_COUNT_MAX; id++)
		FUNC1(ar_snoc->ce_irqs[id].irq_line, ar);
}