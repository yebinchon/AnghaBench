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
typedef  int u8 ;
typedef  int u32 ;
struct vf610_nfc {int /*<<< orphan*/  ecc_mode; scalar_t__ regs; } ;
struct nand_chip {int /*<<< orphan*/  cur_cs; } ;
struct mtd_info {int writesize; int oobsize; } ;

/* Variables and functions */
 int CMD_BYTE1_SHIFT ; 
 int CMD_BYTE2_SHIFT ; 
 int CMD_CODE_SHIFT ; 
 int COMMAND_CAR_BYTE1 ; 
 int COMMAND_CAR_BYTE2 ; 
 int COMMAND_CMD_BYTE1 ; 
 int COMMAND_CMD_BYTE2 ; 
 int COMMAND_RB_HANDSHAKE ; 
 int COMMAND_WRITE_DATA ; 
 int /*<<< orphan*/  ECC_BYPASS ; 
 int EIO ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_SEQIN ; 
 int NAND_STATUS_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vf610_nfc* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct nand_chip*,int*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct vf610_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct vf610_nfc*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, const uint8_t *buf,
				int oob_required, int page)
{
	struct vf610_nfc *nfc = FUNC1(chip);
	struct mtd_info *mtd = FUNC3(chip);
	int trfr_sz = mtd->writesize + mtd->oobsize;
	u32 row = 0, cmd1 = 0, cmd2 = 0, code = 0;
	u8 status;
	int ret;

	FUNC7(chip, chip->cur_cs);

	cmd2 |= NAND_CMD_SEQIN << CMD_BYTE1_SHIFT;
	code |= COMMAND_CMD_BYTE1 | COMMAND_CAR_BYTE1 | COMMAND_CAR_BYTE2;

	FUNC5(chip, page, &code, &row);

	cmd1 |= NAND_CMD_PAGEPROG << CMD_BYTE2_SHIFT;
	code |= COMMAND_CMD_BYTE2 | COMMAND_WRITE_DATA;

	/*
	 * Don't fix endianness on page access for historical reasons.
	 * See comment in vf610_nfc_wr_to_sram
	 */
	FUNC8(nfc->regs + FUNC0(0), buf,
			     mtd->writesize, false);

	code |= COMMAND_RB_HANDSHAKE;
	cmd2 |= code << CMD_CODE_SHIFT;

	FUNC4(nfc, nfc->ecc_mode);
	FUNC6(nfc, 0, row, cmd1, cmd2, trfr_sz);
	FUNC4(nfc, ECC_BYPASS);

	ret = FUNC2(chip, &status);
	if (ret)
		return ret;

	if (status & NAND_STATUS_FAIL)
		return -EIO;

	return 0;
}