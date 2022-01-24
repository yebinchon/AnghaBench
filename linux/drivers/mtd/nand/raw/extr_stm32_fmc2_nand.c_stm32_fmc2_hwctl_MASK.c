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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_fmc2_nfc {int /*<<< orphan*/  complete; scalar_t__ io_base; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 scalar_t__ FMC2_ECC_HAM ; 
 scalar_t__ FMC2_PCR ; 
 int /*<<< orphan*/  FMC2_PCR_WEN ; 
 int NAND_ECC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_fmc2_nfc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_fmc2_nfc*,int) ; 
 struct stm32_fmc2_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct nand_chip *chip, int mode)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC5(chip->controller);

	FUNC4(fmc2, false);

	if (chip->ecc.strength != FMC2_ECC_HAM) {
		u32 pcr = FUNC0(fmc2->io_base + FMC2_PCR);

		if (mode == NAND_ECC_WRITE)
			pcr |= FMC2_PCR_WEN;
		else
			pcr &= ~FMC2_PCR_WEN;
		FUNC6(pcr, fmc2->io_base + FMC2_PCR);

		FUNC1(&fmc2->complete);
		FUNC2(fmc2);
		FUNC3(fmc2, mode);
	}

	FUNC4(fmc2, true);
}