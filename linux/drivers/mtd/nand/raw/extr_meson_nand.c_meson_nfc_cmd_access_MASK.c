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
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int bch_mode; } ;
struct meson_nfc {scalar_t__ reg_base; } ;

/* Variables and functions */
 int FUNC0 (int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFC_CMD_SHORTMODE_DISABLE ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 
 struct meson_nfc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 struct meson_nfc_nand_chip* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct nand_chip *nand, int raw, bool dir,
				 int scrambler)
{
	struct mtd_info *mtd = FUNC5(nand);
	struct meson_nfc *nfc = FUNC4(FUNC3(mtd));
	struct meson_nfc_nand_chip *meson_chip = FUNC6(nand);
	u32 bch = meson_chip->bch_mode, cmd;
	int len = mtd->writesize, pagesize, pages;

	pagesize = nand->ecc.size;

	if (raw) {
		len = mtd->writesize + mtd->oobsize;
		cmd = (len & FUNC2(5, 0)) | scrambler | FUNC1(dir);
		FUNC7(cmd, nfc->reg_base + NFC_REG_CMD);
		return;
	}

	pages = len / nand->ecc.size;

	cmd = FUNC0(FUNC1(dir), scrambler, bch,
		       NFC_CMD_SHORTMODE_DISABLE, pagesize, pages);

	FUNC7(cmd, nfc->reg_base + NFC_REG_CMD);
}