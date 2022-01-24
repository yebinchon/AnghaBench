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
struct nand_chip {int options; } ;
struct mtd_info {int writesize; } ;
struct mpc5121_nfc_prv {int column; int spareonly; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
#define  NAND_CMD_ERASE1 136 
#define  NAND_CMD_ERASE2 135 
#define  NAND_CMD_PAGEPROG 134 
#define  NAND_CMD_READ0 133 
#define  NAND_CMD_READ1 132 
#define  NAND_CMD_READID 131 
#define  NAND_CMD_READOOB 130 
 unsigned int NAND_CMD_READSTART ; 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC6 (struct nand_chip*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC8(struct nand_chip *chip, unsigned command,
				int column, int page)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct mpc5121_nfc_prv *prv = FUNC6(chip);

	prv->column = (column >= 0) ? column : 0;
	prv->spareonly = 0;

	switch (command) {
	case NAND_CMD_PAGEPROG:
		FUNC2(mtd);
		break;
	/*
	 * NFC does not support sub-page reads and writes,
	 * so emulate them using full page transfers.
	 */
	case NAND_CMD_READ0:
		column = 0;
		break;

	case NAND_CMD_READ1:
		prv->column += 256;
		command = NAND_CMD_READ0;
		column = 0;
		break;

	case NAND_CMD_READOOB:
		prv->spareonly = 1;
		command = NAND_CMD_READ0;
		column = 0;
		break;

	case NAND_CMD_SEQIN:
		FUNC8(chip, NAND_CMD_READ0, column, page);
		column = 0;
		break;

	case NAND_CMD_ERASE1:
	case NAND_CMD_ERASE2:
	case NAND_CMD_READID:
	case NAND_CMD_STATUS:
		break;

	default:
		return;
	}

	FUNC1(mtd, command);
	FUNC0(mtd, column, page);

	switch (command) {
	case NAND_CMD_READ0:
		if (mtd->writesize > 512)
			FUNC1(mtd, NAND_CMD_READSTART);
		FUNC4(mtd);
		break;

	case NAND_CMD_READID:
		FUNC3(mtd);
		break;

	case NAND_CMD_STATUS:
		FUNC5(mtd);
		if (chip->options & NAND_BUSWIDTH_16)
			prv->column = 1;
		else
			prv->column = 0;
		break;
	}
}