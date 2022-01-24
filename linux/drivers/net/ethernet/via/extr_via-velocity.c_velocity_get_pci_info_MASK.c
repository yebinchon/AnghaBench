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
struct velocity_info {void* memaddr; void* ioaddr; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int IORESOURCE_IO ; 
 scalar_t__ VELOCITY_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 void* FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct velocity_info *vptr)
{
	struct pci_dev *pdev = vptr->pdev;

	FUNC4(pdev);

	vptr->ioaddr = FUNC3(pdev, 0);
	vptr->memaddr = FUNC3(pdev, 1);

	if (!(FUNC1(pdev, 0) & IORESOURCE_IO)) {
		FUNC0(&pdev->dev,
			   "region #0 is not an I/O resource, aborting.\n");
		return -EINVAL;
	}

	if ((FUNC1(pdev, 1) & IORESOURCE_IO)) {
		FUNC0(&pdev->dev,
			   "region #1 is an I/O resource, aborting.\n");
		return -EINVAL;
	}

	if (FUNC2(pdev, 1) < VELOCITY_IO_SIZE) {
		FUNC0(&pdev->dev, "region #1 is too small.\n");
		return -EINVAL;
	}

	return 0;
}