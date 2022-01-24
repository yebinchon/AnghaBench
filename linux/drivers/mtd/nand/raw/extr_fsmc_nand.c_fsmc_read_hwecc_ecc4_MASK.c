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
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct fsmc_nand_data {scalar_t__ regs_va; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ECC1 ; 
 scalar_t__ ECC2 ; 
 scalar_t__ ECC3 ; 
 int ETIMEDOUT ; 
 unsigned long FSMC_BUSY_WAIT_TIMEOUT ; 
 int FSMC_CODE_RDY ; 
 scalar_t__ STS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 struct fsmc_nand_data* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, const u8 *data,
				u8 *ecc)
{
	struct fsmc_nand_data *host = FUNC2(chip);
	u32 ecc_tmp;
	unsigned long deadline = jiffies + FSMC_BUSY_WAIT_TIMEOUT;

	do {
		if (FUNC3(host->regs_va + STS) & FSMC_CODE_RDY)
			break;

		FUNC0();
	} while (!FUNC4(jiffies, deadline));

	if (FUNC4(jiffies, deadline)) {
		FUNC1(host->dev, "calculate ecc timed out\n");
		return -ETIMEDOUT;
	}

	ecc_tmp = FUNC3(host->regs_va + ECC1);
	ecc[0] = ecc_tmp;
	ecc[1] = ecc_tmp >> 8;
	ecc[2] = ecc_tmp >> 16;
	ecc[3] = ecc_tmp >> 24;

	ecc_tmp = FUNC3(host->regs_va + ECC2);
	ecc[4] = ecc_tmp;
	ecc[5] = ecc_tmp >> 8;
	ecc[6] = ecc_tmp >> 16;
	ecc[7] = ecc_tmp >> 24;

	ecc_tmp = FUNC3(host->regs_va + ECC3);
	ecc[8] = ecc_tmp;
	ecc[9] = ecc_tmp >> 8;
	ecc[10] = ecc_tmp >> 16;
	ecc[11] = ecc_tmp >> 24;

	ecc_tmp = FUNC3(host->regs_va + STS);
	ecc[12] = ecc_tmp >> 16;

	return 0;
}