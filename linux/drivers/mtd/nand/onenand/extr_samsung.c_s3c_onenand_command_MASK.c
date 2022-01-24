#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct onenand_chip {int erase_shift; int page_shift; int page_mask; int writesize; } ;
struct mtd_info {int oobsize; int writesize; struct onenand_chip* priv; } ;
typedef  int loff_t ;
struct TYPE_4__ {unsigned int (* mem_addr ) (int,int,int) ;unsigned int* page_buf; unsigned int* oob_buf; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC1 (TYPE_1__*,unsigned int) ; 
#define  ONENAND_CMD_BUFFERRAM 134 
#define  ONENAND_CMD_ERASE 133 
#define  ONENAND_CMD_PROG 132 
#define  ONENAND_CMD_PROGOOB 131 
#define  ONENAND_CMD_READ 130 
#define  ONENAND_CMD_READOOB 129 
#define  ONENAND_CMD_UNLOCK_ALL 128 
 int FUNC2 (struct onenand_chip*) ; 
 int ONENAND_ERASE_START ; 
 int /*<<< orphan*/  FUNC3 (struct onenand_chip*) ; 
 int ONENAND_UNLOCK_ALL ; 
 int /*<<< orphan*/  TRANS_SPARE_OFFSET ; 
 int /*<<< orphan*/  TSRF ; 
 TYPE_1__* onenand ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int,int,int) ; 

__attribute__((used)) static int FUNC8(struct mtd_info *mtd, int cmd, loff_t addr,
			       size_t len)
{
	struct onenand_chip *this = mtd->priv;
	unsigned int *m, *s;
	int fba, fpa, fsa = 0;
	unsigned int mem_addr, cmd_map_01, cmd_map_10;
	int i, mcount, scount;
	int index;

	fba = (int) (addr >> this->erase_shift);
	fpa = (int) (addr >> this->page_shift);
	fpa &= this->page_mask;

	mem_addr = onenand->mem_addr(fba, fpa, fsa);
	cmd_map_01 = FUNC0(onenand, mem_addr);
	cmd_map_10 = FUNC1(onenand, mem_addr);

	switch (cmd) {
	case ONENAND_CMD_READ:
	case ONENAND_CMD_READOOB:
	case ONENAND_CMD_BUFFERRAM:
		FUNC3(this);
	default:
		break;
	}

	index = FUNC2(this);

	/*
	 * Emulate Two BufferRAMs and access with 4 bytes pointer
	 */
	m = onenand->page_buf;
	s = onenand->oob_buf;

	if (index) {
		m += (this->writesize >> 2);
		s += (mtd->oobsize >> 2);
	}

	mcount = mtd->writesize >> 2;
	scount = mtd->oobsize >> 2;

	switch (cmd) {
	case ONENAND_CMD_READ:
		/* Main */
		for (i = 0; i < mcount; i++)
			*m++ = FUNC4(cmd_map_01);
		return 0;

	case ONENAND_CMD_READOOB:
		FUNC6(TSRF, TRANS_SPARE_OFFSET);
		/* Main */
		for (i = 0; i < mcount; i++)
			*m++ = FUNC4(cmd_map_01);

		/* Spare */
		for (i = 0; i < scount; i++)
			*s++ = FUNC4(cmd_map_01);

		FUNC6(0, TRANS_SPARE_OFFSET);
		return 0;

	case ONENAND_CMD_PROG:
		/* Main */
		for (i = 0; i < mcount; i++)
			FUNC5(*m++, cmd_map_01);
		return 0;

	case ONENAND_CMD_PROGOOB:
		FUNC6(TSRF, TRANS_SPARE_OFFSET);

		/* Main - dummy write */
		for (i = 0; i < mcount; i++)
			FUNC5(0xffffffff, cmd_map_01);

		/* Spare */
		for (i = 0; i < scount; i++)
			FUNC5(*s++, cmd_map_01);

		FUNC6(0, TRANS_SPARE_OFFSET);
		return 0;

	case ONENAND_CMD_UNLOCK_ALL:
		FUNC5(ONENAND_UNLOCK_ALL, cmd_map_10);
		return 0;

	case ONENAND_CMD_ERASE:
		FUNC5(ONENAND_ERASE_START, cmd_map_10);
		return 0;

	default:
		break;
	}

	return 0;
}