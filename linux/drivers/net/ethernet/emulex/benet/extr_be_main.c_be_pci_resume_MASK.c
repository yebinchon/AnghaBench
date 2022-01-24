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
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DETECTION_DELAY ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 struct be_adapter* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	struct be_adapter *adapter = FUNC3(pdev);
	int status = 0;

	status = FUNC2(pdev);
	if (status)
		return status;

	FUNC4(pdev);

	status = FUNC0(adapter);
	if (status)
		return status;

	FUNC1(adapter, ERR_DETECTION_DELAY);

	return 0;
}