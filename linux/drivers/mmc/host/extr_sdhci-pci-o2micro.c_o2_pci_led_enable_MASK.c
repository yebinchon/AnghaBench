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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pci_chip {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2_SD_FREG0_LEDOFF ; 
 int /*<<< orphan*/  O2_SD_FUNC_REG0 ; 
 int /*<<< orphan*/  O2_SD_LED_ENABLE ; 
 int /*<<< orphan*/  O2_SD_TEST_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_pci_chip *chip)
{
	int ret;
	u32 scratch_32;

	/* Set led of SD host function enable */
	ret = FUNC0(chip->pdev,
				    O2_SD_FUNC_REG0, &scratch_32);
	if (ret)
		return;

	scratch_32 &= ~O2_SD_FREG0_LEDOFF;
	FUNC1(chip->pdev,
			       O2_SD_FUNC_REG0, scratch_32);

	ret = FUNC0(chip->pdev,
				    O2_SD_TEST_REG, &scratch_32);
	if (ret)
		return;

	scratch_32 |= O2_SD_LED_ENABLE;
	FUNC1(chip->pdev,
			       O2_SD_TEST_REG, scratch_32);

}