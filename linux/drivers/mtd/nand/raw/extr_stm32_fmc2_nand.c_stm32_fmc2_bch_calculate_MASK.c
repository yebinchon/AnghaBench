#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FMC2_BCHPBR1 ; 
 scalar_t__ FMC2_BCHPBR2 ; 
 scalar_t__ FMC2_BCHPBR3 ; 
 scalar_t__ FMC2_BCHPBR4 ; 
 scalar_t__ FMC2_ECC_BCH8 ; 
 int /*<<< orphan*/  FMC2_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_fmc2_nfc*,int) ; 
 struct stm32_fmc2_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, const u8 *data,
				    u8 *ecc)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC5(chip->controller);
	u32 bchpbr;

	/* Wait until the BCH code is ready */
	if (!FUNC6(&fmc2->complete,
					 FUNC1(FMC2_TIMEOUT_MS))) {
		FUNC0(fmc2->dev, "bch timeout\n");
		FUNC3(fmc2);
		return -ETIMEDOUT;
	}

	/* Read parity bits */
	bchpbr = FUNC2(fmc2->io_base + FMC2_BCHPBR1);
	ecc[0] = bchpbr;
	ecc[1] = bchpbr >> 8;
	ecc[2] = bchpbr >> 16;
	ecc[3] = bchpbr >> 24;

	bchpbr = FUNC2(fmc2->io_base + FMC2_BCHPBR2);
	ecc[4] = bchpbr;
	ecc[5] = bchpbr >> 8;
	ecc[6] = bchpbr >> 16;

	if (chip->ecc.strength == FMC2_ECC_BCH8) {
		ecc[7] = bchpbr >> 24;

		bchpbr = FUNC2(fmc2->io_base + FMC2_BCHPBR3);
		ecc[8] = bchpbr;
		ecc[9] = bchpbr >> 8;
		ecc[10] = bchpbr >> 16;
		ecc[11] = bchpbr >> 24;

		bchpbr = FUNC2(fmc2->io_base + FMC2_BCHPBR4);
		ecc[12] = bchpbr;
	}

	/* Disable ECC */
	FUNC4(fmc2, false);

	return 0;
}