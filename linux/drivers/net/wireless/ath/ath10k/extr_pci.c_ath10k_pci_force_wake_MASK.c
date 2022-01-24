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
struct ath10k_pci {int ps_awake; int /*<<< orphan*/  ps_lock; scalar_t__ mem; scalar_t__ pci_ps; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ; 
 scalar_t__ PCIE_SOC_WAKE_ADDRESS ; 
 int /*<<< orphan*/  PCIE_SOC_WAKE_V_MASK ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);
	unsigned long flags;
	int ret = 0;

	if (ar_pci->pci_ps)
		return ret;

	FUNC3(&ar_pci->ps_lock, flags);

	if (!ar_pci->ps_awake) {
		FUNC2(PCIE_SOC_WAKE_V_MASK,
			  ar_pci->mem + PCIE_LOCAL_BASE_ADDRESS +
			  PCIE_SOC_WAKE_ADDRESS);

		ret = FUNC1(ar);
		if (ret == 0)
			ar_pci->ps_awake = true;
	}

	FUNC4(&ar_pci->ps_lock, flags);

	return ret;
}