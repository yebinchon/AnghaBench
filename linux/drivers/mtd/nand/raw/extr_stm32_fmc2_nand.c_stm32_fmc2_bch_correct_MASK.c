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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FMC2_BCHDSR0 ; 
 scalar_t__ FMC2_BCHDSR1 ; 
 scalar_t__ FMC2_BCHDSR2 ; 
 scalar_t__ FMC2_BCHDSR3 ; 
 scalar_t__ FMC2_BCHDSR4 ; 
 int /*<<< orphan*/  FMC2_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_fmc2_nfc*,int) ; 
 struct stm32_fmc2_nfc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *chip, u8 *dat,
				  u8 *read_ecc, u8 *calc_ecc)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC6(chip->controller);
	u32 ecc_sta[5];

	/* Wait until the decoding error is ready */
	if (!FUNC7(&fmc2->complete,
					 FUNC1(FMC2_TIMEOUT_MS))) {
		FUNC0(fmc2->dev, "bch timeout\n");
		FUNC4(fmc2);
		return -ETIMEDOUT;
	}

	ecc_sta[0] = FUNC2(fmc2->io_base + FMC2_BCHDSR0);
	ecc_sta[1] = FUNC2(fmc2->io_base + FMC2_BCHDSR1);
	ecc_sta[2] = FUNC2(fmc2->io_base + FMC2_BCHDSR2);
	ecc_sta[3] = FUNC2(fmc2->io_base + FMC2_BCHDSR3);
	ecc_sta[4] = FUNC2(fmc2->io_base + FMC2_BCHDSR4);

	/* Disable ECC */
	FUNC5(fmc2, false);

	return FUNC3(chip->ecc.size, dat, ecc_sta);
}