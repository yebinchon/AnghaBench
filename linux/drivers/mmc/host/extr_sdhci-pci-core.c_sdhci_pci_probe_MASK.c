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
typedef  int u8 ;
struct sdhci_pci_slot {int dummy; } ;
struct sdhci_pci_fixes {int (* probe ) (struct sdhci_pci_chip*) ;scalar_t__ allow_runtime_pm; int /*<<< orphan*/  quirks2; int /*<<< orphan*/  quirks; } ;
struct sdhci_pci_chip {int num_slots; int pm_retune; int rpm_retune; scalar_t__ allow_runtime_pm; struct sdhci_pci_slot** slots; struct sdhci_pci_fixes const* fixes; int /*<<< orphan*/  quirks2; int /*<<< orphan*/  quirks; struct pci_dev* pdev; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ revision; scalar_t__ device; scalar_t__ vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sdhci_pci_slot*) ; 
 int MAX_SLOTS ; 
 int /*<<< orphan*/  PCI_SLOT_INFO ; 
 int PCI_SLOT_INFO_FIRST_BAR_MASK ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct sdhci_pci_slot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 struct sdhci_pci_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct sdhci_pci_chip*) ; 
 int FUNC10 (struct pci_dev*) ; 
 struct sdhci_pci_slot* FUNC11 (struct pci_dev*,struct sdhci_pci_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_pci_slot*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct sdhci_pci_chip*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev,
				     const struct pci_device_id *ent)
{
	struct sdhci_pci_chip *chip;
	struct sdhci_pci_slot *slot;

	u8 slots, first_bar;
	int ret, i;

	FUNC0(pdev == NULL);
	FUNC0(ent == NULL);

	FUNC6(&pdev->dev, "SDHCI controller found [%04x:%04x] (rev %x)\n",
		 (int)pdev->vendor, (int)pdev->device, (int)pdev->revision);

	ret = FUNC8(pdev, PCI_SLOT_INFO, &slots);
	if (ret)
		return ret;

	slots = FUNC2(slots) + 1;
	FUNC4(&pdev->dev, "found %d slot(s)\n", slots);

	FUNC0(slots > MAX_SLOTS);

	ret = FUNC8(pdev, PCI_SLOT_INFO, &first_bar);
	if (ret)
		return ret;

	first_bar &= PCI_SLOT_INFO_FIRST_BAR_MASK;

	if (first_bar > 5) {
		FUNC5(&pdev->dev, "Invalid first BAR. Aborting.\n");
		return -ENODEV;
	}

	ret = FUNC10(pdev);
	if (ret)
		return ret;

	chip = FUNC7(&pdev->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->pdev = pdev;
	chip->fixes = (const struct sdhci_pci_fixes *)ent->driver_data;
	if (chip->fixes) {
		chip->quirks = chip->fixes->quirks;
		chip->quirks2 = chip->fixes->quirks2;
		chip->allow_runtime_pm = chip->fixes->allow_runtime_pm;
	}
	chip->num_slots = slots;
	chip->pm_retune = true;
	chip->rpm_retune = true;

	FUNC9(pdev, chip);

	if (chip->fixes && chip->fixes->probe) {
		ret = chip->fixes->probe(chip);
		if (ret)
			return ret;
	}

	slots = chip->num_slots;	/* Quirk may have changed this */

	for (i = 0; i < slots; i++) {
		slot = FUNC11(pdev, chip, first_bar, i);
		if (FUNC1(slot)) {
			for (i--; i >= 0; i--)
				FUNC12(chip->slots[i]);
			return FUNC3(slot);
		}

		chip->slots[i] = slot;
	}

	if (chip->allow_runtime_pm)
		FUNC13(&pdev->dev);

	return 0;
}