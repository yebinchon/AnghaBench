#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ parent; } ;
struct solo_dev {int /*<<< orphan*/  v4l2_dev; scalar_t__ reg_base; TYPE_1__ dev; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct solo_dev *solo_dev)
{
	struct pci_dev *pdev = solo_dev->pdev;

	if (solo_dev->dev.parent)
		FUNC0(&solo_dev->dev);

	if (solo_dev->reg_base) {
		/* Bring down the sub-devices first */
		FUNC10(solo_dev);
		FUNC9(solo_dev);
		FUNC8(solo_dev);
		FUNC15(solo_dev);
		FUNC7(solo_dev);
		FUNC11(solo_dev);
		FUNC14(solo_dev);
		FUNC12(solo_dev);

		/* Now cleanup the PCI device */
		FUNC13(solo_dev, ~0);
		FUNC1(pdev->irq, solo_dev);
		FUNC4(pdev, solo_dev->reg_base);
	}

	FUNC5(pdev);
	FUNC3(pdev);
	FUNC16(&solo_dev->v4l2_dev);
	FUNC6(pdev, NULL);

	FUNC2(solo_dev);
}