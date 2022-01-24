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
 scalar_t__ FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 struct mei_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct mei_device *dev;

	dev = FUNC7(pdev);
	if (!dev)
		return;

	if (FUNC5(dev))
		FUNC8(&pdev->dev);

	FUNC0(&pdev->dev, "stop\n");
	FUNC6(dev);

	FUNC4(dev);

	FUNC3(dev);

	FUNC1(pdev->irq, dev);

	FUNC2(dev);
}