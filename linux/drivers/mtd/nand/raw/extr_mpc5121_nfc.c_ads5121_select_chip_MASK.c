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
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int /*<<< orphan*/  csreg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int) ; 
 struct mpc5121_nfc_prv* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *nand, int chip)
{
	struct mtd_info *mtd = FUNC3(nand);
	struct mpc5121_nfc_prv *prv = FUNC2(nand);
	u8 v;

	v = FUNC0(prv->csreg);
	v |= 0x0F;

	if (chip >= 0) {
		FUNC1(nand, 0);
		v &= ~(1 << chip);
	} else
		FUNC1(nand, -1);

	FUNC4(prv->csreg, v);
}