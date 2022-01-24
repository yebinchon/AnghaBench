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
struct ath10k_pci {TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ath10k_pci_interrupt_handler ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ath10k*) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);
	int ret;

	ret = FUNC2(ar_pci->pdev->irq,
			  ath10k_pci_interrupt_handler,
			  IRQF_SHARED, "ath10k_pci", ar);
	if (ret) {
		FUNC1(ar, "failed to request legacy irq %d: %d\n",
			    ar_pci->pdev->irq, ret);
		return ret;
	}

	return 0;
}