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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ algo; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;
struct marvell_nfc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ NAND_ECC_BCH ; 
 scalar_t__ NDCR ; 
 int NDCR_ECC_EN ; 
 scalar_t__ NDECCCTRL ; 
 int NDECCCTRL_BCH_EN ; 
 int FUNC0 (scalar_t__) ; 
 struct marvell_nfc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip)
{
	struct marvell_nfc *nfc = FUNC1(chip->controller);
	u32 ndcr = FUNC0(nfc->regs + NDCR);

	if (!(ndcr & NDCR_ECC_EN)) {
		FUNC2(ndcr | NDCR_ECC_EN, nfc->regs + NDCR);

		/*
		 * When enabling BCH, set threshold to 0 to always know the
		 * number of corrected bitflips.
		 */
		if (chip->ecc.algo == NAND_ECC_BCH)
			FUNC2(NDECCCTRL_BCH_EN, nfc->regs + NDECCCTRL);
	}
}