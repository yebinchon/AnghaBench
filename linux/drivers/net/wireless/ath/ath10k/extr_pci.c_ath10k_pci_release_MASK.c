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
struct pci_dev {int dummy; } ;
struct ath10k_pci {int /*<<< orphan*/  mem; struct pci_dev* pdev; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_NUM ; 
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);
	struct pci_dev *pdev = ar_pci->pdev;

	FUNC3(pdev, ar_pci->mem);
	FUNC4(pdev, BAR_NUM);
	FUNC1(pdev);
	FUNC2(pdev);
}