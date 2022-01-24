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
typedef  int /*<<< orphan*/  uint8_t ;
struct sm_oob {int /*<<< orphan*/  ecc2; int /*<<< orphan*/  ecc1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_SMALL_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(uint8_t *buffer, struct sm_oob *oob)
{
	uint8_t ecc[3];

	FUNC1(buffer, SM_SMALL_PAGE, ecc,
			     FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
	if (FUNC2(buffer, ecc, oob->ecc1, SM_SMALL_PAGE,
				FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
		return -EIO;

	buffer += SM_SMALL_PAGE;

	FUNC1(buffer, SM_SMALL_PAGE, ecc,
			     FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
	if (FUNC2(buffer, ecc, oob->ecc2, SM_SMALL_PAGE,
				FUNC0(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
		return -EIO;
	return 0;
}