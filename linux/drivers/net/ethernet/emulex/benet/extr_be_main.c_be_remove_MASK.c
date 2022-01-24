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
struct be_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct be_adapter* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct be_adapter *adapter = FUNC11(pdev);

	if (!adapter)
		return;

	FUNC6(adapter);
	FUNC5(adapter, false);

	FUNC0(adapter);

	FUNC14(adapter->netdev);

	FUNC1(adapter);

	if (!FUNC13(adapter->pdev))
		FUNC3(adapter);

	/* tell fw we're done with firing cmds */
	FUNC2(adapter);

	FUNC7(adapter);
	FUNC4(adapter);

	FUNC10(pdev);

	FUNC12(pdev);
	FUNC9(pdev);

	FUNC8(adapter->netdev);
}