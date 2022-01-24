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
typedef  int uint32_t ;
struct TYPE_3__ {int options; } ;
struct sh_flctl {int read_bytes; int index; int erase1_page_addr; int seqin_column; int seqin_page_addr; int seqin_read_cmd; TYPE_2__* pdev; int /*<<< orphan*/  hwecc; int /*<<< orphan*/  page_size; TYPE_1__ chip; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int NAND_BUSWIDTH_16 ; 
#define  NAND_CMD_ERASE1 138 
#define  NAND_CMD_ERASE2 137 
#define  NAND_CMD_PAGEPROG 136 
#define  NAND_CMD_READ0 135 
#define  NAND_CMD_READ1 134 
#define  NAND_CMD_READID 133 
#define  NAND_CMD_READOOB 132 
 int NAND_CMD_READSTART ; 
#define  NAND_CMD_RESET 131 
#define  NAND_CMD_RNDOUT 130 
 int NAND_CMD_RNDOUTSTART ; 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*) ; 
 struct sh_flctl* FUNC6 (struct mtd_info*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sh_flctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sh_flctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mtd_info*,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC16 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC17 (struct sh_flctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct nand_chip *chip, unsigned int command,
			int column, int page_addr)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct sh_flctl *flctl = FUNC6(mtd);
	uint32_t read_cmd = 0;

	FUNC8(&flctl->pdev->dev);

	flctl->read_bytes = 0;
	if (command != NAND_CMD_PAGEPROG)
		flctl->index = 0;

	switch (command) {
	case NAND_CMD_READ1:
	case NAND_CMD_READ0:
		if (flctl->hwecc) {
			/* read page with hwecc */
			FUNC3(mtd, page_addr);
			break;
		}
		if (flctl->page_size)
			FUNC14(mtd, command, (NAND_CMD_READSTART << 8)
				| command);
		else
			FUNC14(mtd, command, command);

		FUNC13(mtd, 0, page_addr);

		flctl->read_bytes = mtd->writesize + mtd->oobsize;
		if (flctl->chip.options & NAND_BUSWIDTH_16)
			column >>= 1;
		flctl->index += column;
		goto read_normal_exit;

	case NAND_CMD_READOOB:
		if (flctl->hwecc) {
			/* read page with hwecc */
			FUNC2(mtd, page_addr);
			break;
		}

		if (flctl->page_size) {
			FUNC14(mtd, command, (NAND_CMD_READSTART << 8)
				| NAND_CMD_READ0);
			FUNC13(mtd, mtd->writesize, page_addr);
		} else {
			FUNC14(mtd, command, command);
			FUNC13(mtd, 0, page_addr);
		}
		flctl->read_bytes = mtd->oobsize;
		goto read_normal_exit;

	case NAND_CMD_RNDOUT:
		if (flctl->hwecc)
			break;

		if (flctl->page_size)
			FUNC14(mtd, command, (NAND_CMD_RNDOUTSTART << 8)
				| command);
		else
			FUNC14(mtd, command, command);

		FUNC13(mtd, column, 0);

		flctl->read_bytes = mtd->writesize + mtd->oobsize - column;
		goto read_normal_exit;

	case NAND_CMD_READID:
		FUNC14(mtd, command, command);

		/* READID is always performed using an 8-bit bus */
		if (flctl->chip.options & NAND_BUSWIDTH_16)
			column <<= 1;
		FUNC13(mtd, column, 0);

		flctl->read_bytes = 8;
		FUNC18(flctl->read_bytes, FUNC0(flctl)); /* set read size */
		FUNC1(flctl);
		FUNC15(flctl);
		FUNC12(flctl, flctl->read_bytes, 0);
		FUNC16(flctl);
		break;

	case NAND_CMD_ERASE1:
		flctl->erase1_page_addr = page_addr;
		break;

	case NAND_CMD_ERASE2:
		FUNC14(mtd, NAND_CMD_ERASE1,
			(command << 8) | NAND_CMD_ERASE1);
		FUNC13(mtd, -1, flctl->erase1_page_addr);
		FUNC15(flctl);
		FUNC16(flctl);
		break;

	case NAND_CMD_SEQIN:
		if (!flctl->page_size) {
			/* output read command */
			if (column >= mtd->writesize) {
				column -= mtd->writesize;
				read_cmd = NAND_CMD_READOOB;
			} else if (column < 256) {
				read_cmd = NAND_CMD_READ0;
			} else {
				column -= 256;
				read_cmd = NAND_CMD_READ1;
			}
		}
		flctl->seqin_column = column;
		flctl->seqin_page_addr = page_addr;
		flctl->seqin_read_cmd = read_cmd;
		break;

	case NAND_CMD_PAGEPROG:
		FUNC1(flctl);
		if (!flctl->page_size) {
			FUNC14(mtd, NAND_CMD_SEQIN,
					flctl->seqin_read_cmd);
			FUNC13(mtd, -1, -1);
			FUNC18(0, FUNC0(flctl));	/* set 0 size */
			FUNC15(flctl);
			FUNC16(flctl);
		}
		if (flctl->hwecc) {
			/* write page with hwecc */
			if (flctl->seqin_column == mtd->writesize)
				FUNC4(mtd);
			else if (!flctl->seqin_column)
				FUNC5(mtd);
			else
				FUNC10("Invalid address !?\n");
			break;
		}
		FUNC14(mtd, command, (command << 8) | NAND_CMD_SEQIN);
		FUNC13(mtd, flctl->seqin_column, flctl->seqin_page_addr);
		FUNC18(flctl->index, FUNC0(flctl));	/* set write size */
		FUNC15(flctl);
		FUNC17(flctl, flctl->index, 0);
		FUNC16(flctl);
		break;

	case NAND_CMD_STATUS:
		FUNC14(mtd, command, command);
		FUNC13(mtd, -1, -1);

		flctl->read_bytes = 1;
		FUNC18(flctl->read_bytes, FUNC0(flctl)); /* set read size */
		FUNC15(flctl);
		FUNC11(flctl, 0); /* read and end */
		break;

	case NAND_CMD_RESET:
		FUNC14(mtd, command, command);
		FUNC13(mtd, -1, -1);

		FUNC18(0, FUNC0(flctl));	/* set 0 size */
		FUNC15(flctl);
		FUNC16(flctl);
		break;

	default:
		break;
	}
	goto runtime_exit;

read_normal_exit:
	FUNC18(flctl->read_bytes, FUNC0(flctl));	/* set read size */
	FUNC1(flctl);
	FUNC15(flctl);
	FUNC12(flctl, flctl->read_bytes, 0);
	FUNC16(flctl);
runtime_exit:
	FUNC9(&flctl->pdev->dev);
	return;
}