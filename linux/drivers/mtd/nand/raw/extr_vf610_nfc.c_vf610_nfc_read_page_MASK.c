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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u32 ;
struct vf610_nfc {scalar_t__ regs; int /*<<< orphan*/  ecc_mode; } ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; } ;
struct TYPE_2__ {int corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {int writesize; int oobsize; TYPE_1__ ecc_stats; } ;

/* Variables and functions */
 int CMD_BYTE1_SHIFT ; 
 int CMD_BYTE2_SHIFT ; 
 int CMD_CODE_SHIFT ; 
 int COMMAND_CAR_BYTE1 ; 
 int COMMAND_CAR_BYTE2 ; 
 int COMMAND_CMD_BYTE1 ; 
 int COMMAND_CMD_BYTE2 ; 
 int COMMAND_RB_HANDSHAKE ; 
 int COMMAND_READ_DATA ; 
 int /*<<< orphan*/  ECC_BYPASS ; 
 int NAND_CMD_READ0 ; 
 int NAND_CMD_READSTART ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vf610_nfc* FUNC1 (struct nand_chip*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vf610_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vf610_nfc*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, uint8_t *buf,
			       int oob_required, int page)
{
	struct vf610_nfc *nfc = FUNC1(chip);
	struct mtd_info *mtd = FUNC2(chip);
	int trfr_sz = mtd->writesize + mtd->oobsize;
	u32 row = 0, cmd1 = 0, cmd2 = 0, code = 0;
	int stat;

	FUNC8(chip, chip->cur_cs);

	cmd2 |= NAND_CMD_READ0 << CMD_BYTE1_SHIFT;
	code |= COMMAND_CMD_BYTE1 | COMMAND_CAR_BYTE1 | COMMAND_CAR_BYTE2;

	FUNC5(chip, page, &code, &row);

	cmd1 |= NAND_CMD_READSTART << CMD_BYTE2_SHIFT;
	code |= COMMAND_CMD_BYTE2 | COMMAND_RB_HANDSHAKE | COMMAND_READ_DATA;

	cmd2 |= code << CMD_CODE_SHIFT;

	FUNC4(nfc, nfc->ecc_mode);
	FUNC7(nfc, 0, row, cmd1, cmd2, trfr_sz);
	FUNC4(nfc, ECC_BYPASS);

	/*
	 * Don't fix endianness on page access for historical reasons.
	 * See comment in vf610_nfc_rd_from_sram
	 */
	FUNC6(buf, nfc->regs + FUNC0(0),
			       mtd->writesize, false);
	if (oob_required)
		FUNC6(chip->oob_poi,
				       nfc->regs + FUNC0(0) +
						   mtd->writesize,
				       mtd->oobsize, false);

	stat = FUNC3(chip, buf, chip->oob_poi, page);

	if (stat < 0) {
		mtd->ecc_stats.failed++;
		return 0;
	} else {
		mtd->ecc_stats.corrected += stat;
		return stat;
	}
}