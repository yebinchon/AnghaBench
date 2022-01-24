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
struct be_resources {int /*<<< orphan*/  member_0; } ;
struct be_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  pool_res; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_FLAGS_SETUP_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,struct be_resources*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_resources*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 
 int /*<<< orphan*/  be_wq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 scalar_t__ FUNC12 (struct be_adapter*) ; 
 scalar_t__ FUNC13 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC14(struct be_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct  be_resources vft_res = {0};

	FUNC1(adapter);

	FUNC9(be_wq);

	if (FUNC13(adapter))
		FUNC8(adapter);

	/* Re-configure FW to distribute resources evenly across max-supported
	 * number of VFs, only when VFs are not already enabled.
	 */
	if (FUNC12(adapter) && FUNC7(adapter) &&
	    !FUNC11(pdev)) {
		FUNC0(adapter,
				    FUNC10(pdev),
				    &vft_res);
		FUNC3(adapter, adapter->pool_res,
					FUNC10(pdev),
					&vft_res);
	}

	FUNC4(adapter);

	FUNC5(adapter);

	FUNC2(adapter);

	FUNC6(adapter);
	adapter->flags &= ~BE_FLAGS_SETUP_DONE;
	return 0;
}