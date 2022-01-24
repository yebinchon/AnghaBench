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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mxc_nand_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ NAND_ECC_HW ; 
 int /*<<< orphan*/  NFC_V3_CONFIG2 ; 
 int /*<<< orphan*/  NFC_V3_CONFIG2_ECC_EN ; 
 struct mxc_nand_host* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip, bool enable)
{
	struct mxc_nand_host *host = FUNC0(chip);
	uint32_t config2;

	if (chip->ecc.mode != NAND_ECC_HW)
		return;

	config2 = FUNC1(NFC_V3_CONFIG2);

	if (enable)
		config2 |= NFC_V3_CONFIG2_ECC_EN;
	else
		config2 &= ~NFC_V3_CONFIG2_ECC_EN;

	FUNC2(config2, NFC_V3_CONFIG2);
}