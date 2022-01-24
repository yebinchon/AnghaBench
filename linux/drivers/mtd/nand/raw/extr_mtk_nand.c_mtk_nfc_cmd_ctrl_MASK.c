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
struct nand_chip {int dummy; } ;
struct mtk_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNFG_OP_CUST ; 
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int /*<<< orphan*/  NFI_CNFG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_nfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_nfc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_nfc*,int) ; 
 struct mtk_nfc* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *chip, int dat,
			     unsigned int ctrl)
{
	struct mtk_nfc *nfc = FUNC3(chip);

	if (ctrl & NAND_ALE) {
		FUNC1(nfc, dat);
	} else if (ctrl & NAND_CLE) {
		FUNC0(nfc);

		FUNC4(nfc, CNFG_OP_CUST, NFI_CNFG);
		FUNC2(nfc, dat);
	}
}