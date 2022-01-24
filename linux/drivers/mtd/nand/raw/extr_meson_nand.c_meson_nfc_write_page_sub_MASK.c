#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nand_sdr_timings {int /*<<< orphan*/  tPROG_max; } ;
struct TYPE_3__ {int steps; } ;
struct nand_chip {int options; TYPE_1__ ecc; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  data_interface; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int /*<<< orphan*/  info_buf; int /*<<< orphan*/  data_buf; } ;
struct TYPE_4__ {int chip_select; } ;
struct meson_nfc {scalar_t__ reg_base; TYPE_2__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRWRITE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_NEED_SCRAMBLING ; 
 int NFC_CMD_CLE ; 
 int /*<<< orphan*/  NFC_CMD_SCRAMBLER_DISABLE ; 
 int /*<<< orphan*/  NFC_CMD_SCRAMBLER_ENABLE ; 
 scalar_t__ NFC_REG_CMD ; 
 int PER_INFO_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_nfc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct meson_nfc* FUNC8 (struct nand_chip*) ; 
 struct nand_sdr_timings* FUNC9 (int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC10 (struct nand_chip*) ; 
 struct meson_nfc_nand_chip* FUNC11 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct nand_chip *nand,
				    int page, int raw)
{
	struct mtd_info *mtd = FUNC10(nand);
	const struct nand_sdr_timings *sdr =
		FUNC9(&nand->data_interface);
	struct meson_nfc_nand_chip *meson_chip = FUNC11(nand);
	struct meson_nfc *nfc = FUNC8(nand);
	int data_len, info_len;
	u32 cmd;
	int ret;

	FUNC7(nand, nand->cur_cs);

	data_len =  mtd->writesize + mtd->oobsize;
	info_len = nand->ecc.steps * PER_INFO_BYTE;

	ret = FUNC6(nand, page, DIRWRITE);
	if (ret)
		return ret;

	ret = FUNC4(nand, meson_chip->data_buf,
					 data_len, meson_chip->info_buf,
					 info_len, DMA_TO_DEVICE);
	if (ret)
		return ret;

	if (nand->options & NAND_NEED_SCRAMBLING) {
		FUNC2(nfc, page);
		FUNC1(nand, raw, DIRWRITE,
				     NFC_CMD_SCRAMBLER_ENABLE);
	} else {
		FUNC1(nand, raw, DIRWRITE,
				     NFC_CMD_SCRAMBLER_DISABLE);
	}

	cmd = nfc->param.chip_select | NFC_CMD_CLE | NAND_CMD_PAGEPROG;
	FUNC12(cmd, nfc->reg_base + NFC_REG_CMD);
	FUNC5(nfc, FUNC0(sdr->tPROG_max));

	FUNC3(nand, data_len, info_len, DMA_TO_DEVICE);

	return ret;
}