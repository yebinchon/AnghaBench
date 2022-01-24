#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct nand_sdr_timings {int /*<<< orphan*/  tR_max; } ;
struct nand_rw_cmd {int dummy; } ;
struct nand_chip {int options; int /*<<< orphan*/  data_interface; } ;
struct mtd_info {int writesize; } ;
struct TYPE_8__ {int /*<<< orphan*/  tadl; } ;
struct TYPE_6__ {size_t* addrs; size_t cmd0; size_t cmd1; } ;
struct TYPE_7__ {TYPE_2__ rw; int /*<<< orphan*/ * cmd; } ;
struct TYPE_5__ {size_t chip_select; } ;
struct meson_nfc {TYPE_4__ timing; scalar_t__ reg_base; TYPE_3__ cmdfifo; TYPE_1__ param; } ;

/* Variables and functions */
 size_t NAND_CMD_READ0 ; 
 size_t NAND_CMD_READSTART ; 
 size_t NAND_CMD_SEQIN ; 
 int NAND_ROW_ADDR_3 ; 
 size_t NFC_CMD_ALE ; 
 size_t NFC_CMD_CLE ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 struct meson_nfc* FUNC4 (struct nand_chip*) ; 
 struct nand_sdr_timings* FUNC5 (int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *nand,
						int page, bool in)
{
	struct mtd_info *mtd = FUNC6(nand);
	struct meson_nfc *nfc = FUNC4(nand);
	const struct nand_sdr_timings *sdr =
		FUNC5(&nand->data_interface);
	u32 *addrs = nfc->cmdfifo.rw.addrs;
	u32 cs = nfc->param.chip_select;
	u32 cmd0, cmd_num, row_start;
	int ret = 0, i;

	cmd_num = sizeof(struct nand_rw_cmd) / sizeof(int);

	cmd0 = in ? NAND_CMD_READ0 : NAND_CMD_SEQIN;
	nfc->cmdfifo.rw.cmd0 = cs | NFC_CMD_CLE | cmd0;

	addrs[0] = cs | NFC_CMD_ALE | 0;
	if (mtd->writesize <= 512) {
		cmd_num--;
		row_start = 1;
	} else {
		addrs[1] = cs | NFC_CMD_ALE | 0;
		row_start = 2;
	}

	addrs[row_start] = cs | NFC_CMD_ALE | FUNC1(page, 0);
	addrs[row_start + 1] = cs | NFC_CMD_ALE | FUNC1(page, 1);

	if (nand->options & NAND_ROW_ADDR_3)
		addrs[row_start + 2] =
			cs | NFC_CMD_ALE | FUNC1(page, 2);
	else
		cmd_num--;

	/* subtract cmd1 */
	cmd_num--;

	for (i = 0; i < cmd_num; i++)
		FUNC8(nfc->cmdfifo.cmd[i],
			       nfc->reg_base + NFC_REG_CMD);

	if (in) {
		nfc->cmdfifo.rw.cmd1 = cs | NFC_CMD_CLE | NAND_CMD_READSTART;
		FUNC7(nfc->cmdfifo.rw.cmd1, nfc->reg_base + NFC_REG_CMD);
		FUNC3(nfc, FUNC0(sdr->tR_max));
	} else {
		FUNC2(nfc, nfc->timing.tadl);
	}

	return ret;
}