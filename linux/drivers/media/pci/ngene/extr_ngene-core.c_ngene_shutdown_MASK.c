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
struct ngene {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct ngene* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  shutdown_workaround ; 

void FUNC4(struct pci_dev *pdev)
{
	struct ngene *dev = FUNC3(pdev);

	if (!dev || !shutdown_workaround)
		return;

	FUNC0(&pdev->dev, "shutdown workaround...\n");
	FUNC1(dev);
	FUNC2(pdev);
}