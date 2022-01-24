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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct ath10k_pci {struct pci_dev* pdev; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int) ; 
 int FUNC1 (struct ath10k*) ; 
 struct ath10k_pci* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC2(ar);
	struct pci_dev *pdev = ar_pci->pdev;
	u32 val;
	int ret = 0;

	ret = FUNC1(ar);
	if (ret) {
		FUNC0(ar, "failed to wake up target: %d\n", ret);
		return ret;
	}

	/* Suspend/Resume resets the PCI configuration space, so we have to
	 * re-disable the RETRY_TIMEOUT register (0x41) to keep PCI Tx retries
	 * from interfering with C3 CPU state. pci_restore_state won't help
	 * here since it only restores the first 64 bytes pci config header.
	 */
	FUNC3(pdev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC4(pdev, 0x40, val & 0xffff00ff);

	return ret;
}