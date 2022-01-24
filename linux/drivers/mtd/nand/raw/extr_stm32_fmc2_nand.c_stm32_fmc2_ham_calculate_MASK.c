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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int /*<<< orphan*/  dev; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 scalar_t__ FMC2_HECCR ; 
 scalar_t__ FMC2_SR ; 
 int FMC2_SR_NWRF ; 
 int /*<<< orphan*/  FMC2_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_fmc2_nfc*,int) ; 
 struct stm32_fmc2_nfc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, const u8 *data,
				    u8 *ecc)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC5(chip->controller);
	u32 sr, heccr;
	int ret;

	ret = FUNC2(fmc2->io_base + FMC2_SR,
					 sr, sr & FMC2_SR_NWRF, 10,
					 FMC2_TIMEOUT_MS);
	if (ret) {
		FUNC0(fmc2->dev, "ham timeout\n");
		return ret;
	}

	heccr = FUNC1(fmc2->io_base + FMC2_HECCR);

	FUNC3(heccr, ecc);

	/* Disable ECC */
	FUNC4(fmc2, false);

	return 0;
}