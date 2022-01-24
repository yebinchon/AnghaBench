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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev)
{
	int err;

	err = FUNC5(pdev, FUNC0(64));
	if (err) {
		FUNC2(&pdev->dev, "Warning: couldn't set 64-bit PCI DMA mask\n");
		err = FUNC5(pdev, FUNC0(32));
		if (err) {
			FUNC1(&pdev->dev, "Can't set PCI DMA mask, aborting\n");
			return err;
		}
	}

	err = FUNC4(pdev, FUNC0(64));
	if (err) {
		FUNC2(&pdev->dev,
			 "Warning: couldn't set 64-bit consistent PCI DMA mask\n");
		err = FUNC4(pdev, FUNC0(32));
		if (err) {
			FUNC1(&pdev->dev,
				"Can't set consistent PCI DMA mask, aborting\n");
			return err;
		}
	}

	FUNC3(&pdev->dev, 2u * 1024 * 1024 * 1024);
	return err;
}