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
struct sdhci_pci_chip {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2_SD_CAPS ; 
 int /*<<< orphan*/  O2_SD_CAP_REG0 ; 
 int /*<<< orphan*/  O2_SD_DELAY_CTRL ; 
 int /*<<< orphan*/  O2_SD_DEV_CTRL ; 
 int /*<<< orphan*/  O2_SD_FUNC_REG3 ; 
 int /*<<< orphan*/  O2_SD_LD0_CTRL ; 
 int /*<<< orphan*/  O2_SD_MISC_CTRL4 ; 
 int /*<<< orphan*/  O2_SD_MISC_REG5 ; 
 int /*<<< orphan*/  O2_SD_TEST_REG ; 
 int /*<<< orphan*/  O2_SD_TUNING_CTRL ; 
 int /*<<< orphan*/  O2_SD_UHS2_L1_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sdhci_pci_chip *chip)
{
	u32 scratch_32;
	int ret;
	/* Improve write performance for SD3.0 */
	ret = FUNC0(chip->pdev, O2_SD_DEV_CTRL, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~((1 << 12) | (1 << 13) | (1 << 14));
	FUNC1(chip->pdev, O2_SD_DEV_CTRL, scratch_32);

	/* Enable Link abnormal reset generating Reset */
	ret = FUNC0(chip->pdev, O2_SD_MISC_REG5, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~((1 << 19) | (1 << 11));
	scratch_32 |= (1 << 10);
	FUNC1(chip->pdev, O2_SD_MISC_REG5, scratch_32);

	/* set card power over current protection */
	ret = FUNC0(chip->pdev, O2_SD_TEST_REG, &scratch_32);
	if (ret)
		return;
	scratch_32 |= (1 << 4);
	FUNC1(chip->pdev, O2_SD_TEST_REG, scratch_32);

	/* adjust the output delay for SD mode */
	FUNC1(chip->pdev, O2_SD_DELAY_CTRL, 0x00002492);

	/* Set the output voltage setting of Aux 1.2v LDO */
	ret = FUNC0(chip->pdev, O2_SD_LD0_CTRL, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(3 << 12);
	FUNC1(chip->pdev, O2_SD_LD0_CTRL, scratch_32);

	/* Set Max power supply capability of SD host */
	ret = FUNC0(chip->pdev, O2_SD_CAP_REG0, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(0x01FE);
	scratch_32 |= 0x00CC;
	FUNC1(chip->pdev, O2_SD_CAP_REG0, scratch_32);
	/* Set DLL Tuning Window */
	ret = FUNC0(chip->pdev,
				    O2_SD_TUNING_CTRL, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(0x000000FF);
	scratch_32 |= 0x00000066;
	FUNC1(chip->pdev, O2_SD_TUNING_CTRL, scratch_32);

	/* Set UHS2 T_EIDLE */
	ret = FUNC0(chip->pdev,
				    O2_SD_UHS2_L1_CTRL, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(0x000000FC);
	scratch_32 |= 0x00000084;
	FUNC1(chip->pdev, O2_SD_UHS2_L1_CTRL, scratch_32);

	/* Set UHS2 Termination */
	ret = FUNC0(chip->pdev, O2_SD_FUNC_REG3, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~((1 << 21) | (1 << 30));

	FUNC1(chip->pdev, O2_SD_FUNC_REG3, scratch_32);

	/* Set L1 Entrance Timer */
	ret = FUNC0(chip->pdev, O2_SD_CAPS, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(0xf0000000);
	scratch_32 |= 0x30000000;
	FUNC1(chip->pdev, O2_SD_CAPS, scratch_32);

	ret = FUNC0(chip->pdev,
				    O2_SD_MISC_CTRL4, &scratch_32);
	if (ret)
		return;
	scratch_32 &= ~(0x000f0000);
	scratch_32 |= 0x00080000;
	FUNC1(chip->pdev, O2_SD_MISC_CTRL4, scratch_32);
}