#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct sdhci_pci_chip {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2_SD_ADMA1 ; 
 int /*<<< orphan*/  O2_SD_ADMA2 ; 
 int /*<<< orphan*/  O2_SD_CAPS ; 
 int /*<<< orphan*/  O2_SD_CAP_REG2 ; 
 int /*<<< orphan*/  O2_SD_CLKREQ ; 
 int /*<<< orphan*/  O2_SD_CLK_SETTING ; 
 int O2_SD_FREG4_ENABLE_CLK_SET ; 
 int /*<<< orphan*/  O2_SD_FUNC_REG0 ; 
 int /*<<< orphan*/  O2_SD_FUNC_REG4 ; 
 int /*<<< orphan*/  O2_SD_INF_MOD ; 
 int /*<<< orphan*/  O2_SD_LOCK_WP ; 
 int /*<<< orphan*/  O2_SD_MULTI_VCC3V ; 
 int /*<<< orphan*/  O2_SD_PLL_SETTING ; 
 int /*<<< orphan*/  O2_SD_TUNING_CTRL ; 
#define  PCI_DEVICE_ID_O2_8220 136 
#define  PCI_DEVICE_ID_O2_8221 135 
#define  PCI_DEVICE_ID_O2_8320 134 
#define  PCI_DEVICE_ID_O2_8321 133 
#define  PCI_DEVICE_ID_O2_FUJIN2 132 
#define  PCI_DEVICE_ID_O2_SDS0 131 
#define  PCI_DEVICE_ID_O2_SDS1 130 
#define  PCI_DEVICE_ID_O2_SEABIRD0 129 
#define  PCI_DEVICE_ID_O2_SEABIRD1 128 
 int /*<<< orphan*/  FUNC0 (struct sdhci_pci_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_pci_chip*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_pci_chip*) ; 

int FUNC7(struct sdhci_pci_chip *chip)
{
	int ret;
	u8 scratch;
	u32 scratch_32;

	switch (chip->pdev->device) {
	case PCI_DEVICE_ID_O2_8220:
	case PCI_DEVICE_ID_O2_8221:
	case PCI_DEVICE_ID_O2_8320:
	case PCI_DEVICE_ID_O2_8321:
		/* This extra setup is required due to broken ADMA. */
		ret = FUNC2(chip->pdev,
				O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch &= 0x7f;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);

		/* Set Multi 3 to VCC3V# */
		FUNC4(chip->pdev, O2_SD_MULTI_VCC3V, 0x08);

		/* Disable CLK_REQ# support after media DET */
		ret = FUNC2(chip->pdev,
				O2_SD_CLKREQ, &scratch);
		if (ret)
			return ret;
		scratch |= 0x20;
		FUNC4(chip->pdev, O2_SD_CLKREQ, scratch);

		/* Choose capabilities, enable SDMA.  We have to write 0x01
		 * to the capabilities register first to unlock it.
		 */
		ret = FUNC2(chip->pdev, O2_SD_CAPS, &scratch);
		if (ret)
			return ret;
		scratch |= 0x01;
		FUNC4(chip->pdev, O2_SD_CAPS, scratch);
		FUNC4(chip->pdev, O2_SD_CAPS, 0x73);

		/* Disable ADMA1/2 */
		FUNC4(chip->pdev, O2_SD_ADMA1, 0x39);
		FUNC4(chip->pdev, O2_SD_ADMA2, 0x08);

		/* Disable the infinite transfer mode */
		ret = FUNC2(chip->pdev,
				O2_SD_INF_MOD, &scratch);
		if (ret)
			return ret;
		scratch |= 0x08;
		FUNC4(chip->pdev, O2_SD_INF_MOD, scratch);

		/* Lock WP */
		ret = FUNC2(chip->pdev,
				O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch |= 0x80;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);
		break;
	case PCI_DEVICE_ID_O2_SDS0:
	case PCI_DEVICE_ID_O2_SDS1:
	case PCI_DEVICE_ID_O2_FUJIN2:
		/* UnLock WP */
		ret = FUNC2(chip->pdev,
				O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;

		scratch &= 0x7f;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);

		/* DevId=8520 subId= 0x11 or 0x12  Type Chip support */
		if (chip->pdev->device == PCI_DEVICE_ID_O2_FUJIN2) {
			ret = FUNC3(chip->pdev,
						    O2_SD_FUNC_REG0,
						    &scratch_32);
			scratch_32 = ((scratch_32 & 0xFF000000) >> 24);

			/* Check Whether subId is 0x11 or 0x12 */
			if ((scratch_32 == 0x11) || (scratch_32 == 0x12)) {
				scratch_32 = 0x25100000;

				FUNC1(chip, scratch_32);
				ret = FUNC3(chip->pdev,
							    O2_SD_FUNC_REG4,
							    &scratch_32);

				/* Enable Base Clk setting change */
				scratch_32 |= O2_SD_FREG4_ENABLE_CLK_SET;
				FUNC5(chip->pdev,
						       O2_SD_FUNC_REG4,
						       scratch_32);

				/* Set Tuning Window to 4 */
				FUNC4(chip->pdev,
						      O2_SD_TUNING_CTRL, 0x44);

				break;
			}
		}

		/* Enable 8520 led function */
		FUNC0(chip);

		/* Set timeout CLK */
		ret = FUNC3(chip->pdev,
					    O2_SD_CLK_SETTING, &scratch_32);
		if (ret)
			return ret;

		scratch_32 &= ~(0xFF00);
		scratch_32 |= 0x07E0C800;
		FUNC5(chip->pdev,
				       O2_SD_CLK_SETTING, scratch_32);

		ret = FUNC3(chip->pdev,
					    O2_SD_CLKREQ, &scratch_32);
		if (ret)
			return ret;
		scratch_32 |= 0x3;
		FUNC5(chip->pdev, O2_SD_CLKREQ, scratch_32);

		ret = FUNC3(chip->pdev,
					    O2_SD_PLL_SETTING, &scratch_32);
		if (ret)
			return ret;

		scratch_32 &= ~(0x1F3F070E);
		scratch_32 |= 0x18270106;
		FUNC5(chip->pdev,
				       O2_SD_PLL_SETTING, scratch_32);

		/* Disable UHS1 funciton */
		ret = FUNC3(chip->pdev,
					    O2_SD_CAP_REG2, &scratch_32);
		if (ret)
			return ret;
		scratch_32 &= ~(0xE0);
		FUNC5(chip->pdev,
				       O2_SD_CAP_REG2, scratch_32);

		if (chip->pdev->device == PCI_DEVICE_ID_O2_FUJIN2)
			FUNC6(chip);

		/* Lock WP */
		ret = FUNC2(chip->pdev,
					   O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch |= 0x80;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);
		break;
	case PCI_DEVICE_ID_O2_SEABIRD0:
	case PCI_DEVICE_ID_O2_SEABIRD1:
		/* UnLock WP */
		ret = FUNC2(chip->pdev,
				O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;

		scratch &= 0x7f;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);

		ret = FUNC3(chip->pdev,
					    O2_SD_PLL_SETTING, &scratch_32);

		if ((scratch_32 & 0xff000000) == 0x01000000) {
			scratch_32 &= 0x0000FFFF;
			scratch_32 |= 0x1F340000;

			FUNC5(chip->pdev,
					       O2_SD_PLL_SETTING, scratch_32);
		} else {
			scratch_32 &= 0x0000FFFF;
			scratch_32 |= 0x25100000;

			FUNC5(chip->pdev,
					       O2_SD_PLL_SETTING, scratch_32);

			ret = FUNC3(chip->pdev,
						    O2_SD_FUNC_REG4,
						    &scratch_32);
			scratch_32 |= (1 << 22);
			FUNC5(chip->pdev,
					       O2_SD_FUNC_REG4, scratch_32);
		}

		/* Set Tuning Windows to 5 */
		FUNC4(chip->pdev,
				O2_SD_TUNING_CTRL, 0x55);
		/* Lock WP */
		ret = FUNC2(chip->pdev,
					   O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch |= 0x80;
		FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch);
		break;
	}

	return 0;
}