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
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 struct mei_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct mei_device *dev;

	dev = FUNC6(pdev);
	if (!dev) {
		FUNC0(&pdev->dev, "mei: dev == NULL\n");
		return;
	}

	FUNC7(&pdev->dev);

	FUNC4(dev);

	FUNC5(dev);

	FUNC3(dev);
	FUNC1(pdev->irq, dev);

	FUNC2(dev);
}