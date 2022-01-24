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
struct ath10k_pci {scalar_t__ mem; int /*<<< orphan*/  ps_awake; int /*<<< orphan*/  ps_wake_refcount; int /*<<< orphan*/  ps_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_PCI_PS ; 
 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ; 
 scalar_t__ PCIE_SOC_WAKE_ADDRESS ; 
 int /*<<< orphan*/  PCIE_SOC_WAKE_V_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_pci* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC1(ar);

	FUNC3(&ar_pci->ps_lock);

	FUNC0(ar, ATH10K_DBG_PCI_PS, "pci ps wake reg refcount %lu awake %d\n",
		   ar_pci->ps_wake_refcount, ar_pci->ps_awake);

	FUNC2(PCIE_SOC_WAKE_V_MASK,
		  ar_pci->mem + PCIE_LOCAL_BASE_ADDRESS +
		  PCIE_SOC_WAKE_ADDRESS);
}