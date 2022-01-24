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
struct ath10k_pci {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_PCI ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 struct ath10k_pci* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*) ; 
 struct ath10k* FUNC9 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct ath10k *ar = FUNC9(pdev);
	struct ath10k_pci *ar_pci;

	FUNC2(ar, ATH10K_DBG_PCI, "pci remove\n");

	if (!ar)
		return;

	ar_pci = FUNC5(ar);

	if (!ar_pci)
		return;

	FUNC1(ar);
	FUNC4(ar);
	FUNC3(ar);
	FUNC7(ar);
	FUNC8(ar);
	FUNC6(ar);
	FUNC0(ar);
}