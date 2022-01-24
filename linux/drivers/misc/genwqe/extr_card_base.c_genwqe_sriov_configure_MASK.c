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

/* Variables and functions */
 struct genwqe_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, int numvfs)
{
	int rc;
	struct genwqe_dev *cd = FUNC0(&dev->dev);

	if (numvfs > 0) {
		FUNC1(cd);
		rc = FUNC3(dev, numvfs);
		if (rc < 0)
			return rc;
		return numvfs;
	}
	if (numvfs == 0) {
		FUNC2(dev);
		return 0;
	}
	return 0;
}