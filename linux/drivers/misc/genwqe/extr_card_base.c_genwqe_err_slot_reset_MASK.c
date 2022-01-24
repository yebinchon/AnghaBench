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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct genwqe_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct genwqe_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC3(struct pci_dev *pci_dev)
{
	int rc;
	struct genwqe_dev *cd = FUNC1(&pci_dev->dev);

	rc = FUNC2(cd);
	if (!rc) {
		return PCI_ERS_RESULT_RECOVERED;
	} else {
		FUNC0(&pci_dev->dev,
			"err: problems with PCI setup (err=%d)\n", rc);
		return PCI_ERS_RESULT_DISCONNECT;
	}
}