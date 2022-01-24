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
struct ath10k_pci {scalar_t__ oper_irq_mode; } ;
struct ath10k {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ATH10K_PCI_IRQ_LEGACY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 scalar_t__ FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 struct ath10k_pci* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *arg)
{
	struct ath10k *ar = arg;
	struct ath10k_pci *ar_pci = FUNC5(ar);
	int ret;

	if (FUNC2(ar))
		return IRQ_NONE;

	ret = FUNC1(ar);
	if (ret) {
		FUNC6(ar, "failed to wake device up on irq: %d\n", ret);
		return IRQ_NONE;
	}

	if ((ar_pci->oper_irq_mode == ATH10K_PCI_IRQ_LEGACY) &&
	    !FUNC4(ar))
		return IRQ_NONE;

	FUNC0(ar);
	FUNC3(ar);
	FUNC7(&ar->napi);

	return IRQ_HANDLED;
}