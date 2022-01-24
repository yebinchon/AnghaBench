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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct cb710_chip {int platform_id; int /*<<< orphan*/  slot_refs_count; int /*<<< orphan*/  iobase; struct pci_dev* pdev; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CB710_SLOT_MMC ; 
 int CB710_SLOT_MS ; 
 int CB710_SLOT_SM ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cb710_ida ; 
 int /*<<< orphan*/  cb710_irq_handler ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct cb710_chip*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cb710_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cb710_chip* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cb710_chip*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct cb710_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int,int) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  slot ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct cb710_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev,
	const struct pci_device_id *ent)
{
	struct cb710_chip *chip;
	u32 val;
	int err;
	int n = 0;

	err = FUNC2(pdev);
	if (err)
		return err;

	/* this is actually magic... */
	FUNC10(pdev, 0x48, &val);
	if (!(val & 0x80000000)) {
		FUNC12(pdev, 0x48, val|0x71000000);
		FUNC10(pdev, 0x48, &val);
	}

	FUNC5(&pdev->dev, "PCI config[0x48] = 0x%08X\n", val);
	if (!(val & 0x70000000))
		return -ENODEV;
	val = (val >> 28) & 7;
	if (val & CB710_SLOT_MMC)
		++n;
	if (val & CB710_SLOT_MS)
		++n;
	if (val & CB710_SLOT_SM)
		++n;

	chip = FUNC7(&pdev->dev, FUNC17(chip, slot, n),
			    GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	err = FUNC13(pdev);
	if (err)
		return err;

	err = FUNC14(pdev, 0x0001, KBUILD_MODNAME);
	if (err)
		return err;

	FUNC16(&chip->irq_lock);
	chip->pdev = pdev;
	chip->iobase = FUNC15(pdev)[0];

	FUNC11(pdev, chip);

	err = FUNC8(&pdev->dev, pdev->irq,
		cb710_irq_handler, IRQF_SHARED, KBUILD_MODNAME, chip);
	if (err)
		return err;

	err = FUNC9(&cb710_ida, GFP_KERNEL);
	if (err < 0)
		return err;
	chip->platform_id = err;

	FUNC6(&pdev->dev, "id %d, IO 0x%p, IRQ %d\n",
		chip->platform_id, chip->iobase, pdev->irq);

	if (val & CB710_SLOT_MMC) {	/* MMC/SD slot */
		err = FUNC3(chip,
			CB710_SLOT_MMC, 0x00, "cb710-mmc");
		if (err)
			return err;
	}

	if (val & CB710_SLOT_MS) {	/* MemoryStick slot */
		err = FUNC3(chip,
			CB710_SLOT_MS, 0x40, "cb710-ms");
		if (err)
			goto unreg_mmc;
	}

	if (val & CB710_SLOT_SM) {	/* SmartMedia slot */
		err = FUNC3(chip,
			CB710_SLOT_SM, 0x60, "cb710-sm");
		if (err)
			goto unreg_ms;
	}

	return 0;
unreg_ms:
	FUNC4(chip, CB710_SLOT_MS);
unreg_mmc:
	FUNC4(chip, CB710_SLOT_MMC);

#ifdef CONFIG_CB710_DEBUG_ASSUMPTIONS
	BUG_ON(atomic_read(&chip->slot_refs_count) != 0);
#endif
	return err;
}