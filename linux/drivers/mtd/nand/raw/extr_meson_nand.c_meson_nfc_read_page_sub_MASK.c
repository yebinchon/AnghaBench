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
struct TYPE_2__ {int steps; } ;
struct nand_chip {int options; TYPE_1__ ecc; int /*<<< orphan*/  cur_cs; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int /*<<< orphan*/  info_buf; int /*<<< orphan*/  data_buf; } ;
struct meson_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRREAD ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int NAND_NEED_SCRAMBLING ; 
 int /*<<< orphan*/  NFC_CMD_SCRAMBLER_DISABLE ; 
 int /*<<< orphan*/  NFC_CMD_SCRAMBLER_ENABLE ; 
 int PER_INFO_BYTE ; 
 int /*<<< orphan*/  FUNC0 (struct meson_nfc*,struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_nfc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct meson_nfc*) ; 
 struct meson_nfc* FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 struct meson_nfc_nand_chip* FUNC10 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC11(struct nand_chip *nand,
				   int page, int raw)
{
	struct mtd_info *mtd = FUNC9(nand);
	struct meson_nfc *nfc = FUNC8(nand);
	struct meson_nfc_nand_chip *meson_chip = FUNC10(nand);
	int data_len, info_len;
	int ret;

	FUNC6(nand, nand->cur_cs);

	data_len =  mtd->writesize + mtd->oobsize;
	info_len = nand->ecc.steps * PER_INFO_BYTE;

	ret = FUNC5(nand, page, DIRREAD);
	if (ret)
		return ret;

	ret = FUNC4(nand, meson_chip->data_buf,
					 data_len, meson_chip->info_buf,
					 info_len, DMA_FROM_DEVICE);
	if (ret)
		return ret;

	if (nand->options & NAND_NEED_SCRAMBLING) {
		FUNC2(nfc, page);
		FUNC1(nand, raw, DIRREAD,
				     NFC_CMD_SCRAMBLER_ENABLE);
	} else {
		FUNC1(nand, raw, DIRREAD,
				     NFC_CMD_SCRAMBLER_DISABLE);
	}

	ret = FUNC7(nfc);
	FUNC0(nfc, nand, raw);

	FUNC3(nand, data_len, info_len, DMA_FROM_DEVICE);

	return ret;
}