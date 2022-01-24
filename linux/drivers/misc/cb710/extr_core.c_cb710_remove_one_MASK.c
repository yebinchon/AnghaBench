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
struct pci_dev {int dummy; } ;
struct cb710_chip {int /*<<< orphan*/  platform_id; int /*<<< orphan*/  slot_refs_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CB710_SLOT_MMC ; 
 int /*<<< orphan*/  CB710_SLOT_MS ; 
 int /*<<< orphan*/  CB710_SLOT_SM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cb710_ida ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cb710_chip* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct cb710_chip *chip = FUNC4(pdev);

	FUNC2(chip, CB710_SLOT_SM);
	FUNC2(chip, CB710_SLOT_MS);
	FUNC2(chip, CB710_SLOT_MMC);
#ifdef CONFIG_CB710_DEBUG_ASSUMPTIONS
	BUG_ON(atomic_read(&chip->slot_refs_count) != 0);
#endif

	FUNC3(&cb710_ida, chip->platform_id);
}