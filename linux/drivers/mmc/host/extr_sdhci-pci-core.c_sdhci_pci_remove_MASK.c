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
struct sdhci_pci_chip {int num_slots; int /*<<< orphan*/ * slots; scalar_t__ allow_runtime_pm; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sdhci_pci_chip* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	int i;
	struct sdhci_pci_chip *chip = FUNC0(pdev);

	if (chip->allow_runtime_pm)
		FUNC2(&pdev->dev);

	for (i = 0; i < chip->num_slots; i++)
		FUNC1(chip->slots[i]);
}