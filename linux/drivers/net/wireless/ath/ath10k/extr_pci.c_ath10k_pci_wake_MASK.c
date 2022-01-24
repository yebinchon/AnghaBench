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
struct ath10k_pci {scalar_t__ pci_ps; scalar_t__ ps_wake_refcount; int ps_awake; int /*<<< orphan*/  ps_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_PCI_PS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 struct ath10k_pci* FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC3(ar);
	unsigned long flags;
	int ret = 0;

	if (ar_pci->pci_ps == 0)
		return ret;

	FUNC5(&ar_pci->ps_lock, flags);

	FUNC2(ar, ATH10K_DBG_PCI_PS, "pci ps wake refcount %lu awake %d\n",
		   ar_pci->ps_wake_refcount, ar_pci->ps_awake);

	/* This function can be called very frequently. To avoid excessive
	 * CPU stalls for MMIO reads use a cache var to hold the device state.
	 */
	if (!ar_pci->ps_awake) {
		FUNC1(ar);

		ret = FUNC4(ar);
		if (ret == 0)
			ar_pci->ps_awake = true;
	}

	if (ret == 0) {
		ar_pci->ps_wake_refcount++;
		FUNC0(ar_pci->ps_wake_refcount == 0);
	}

	FUNC6(&ar_pci->ps_lock, flags);

	return ret;
}