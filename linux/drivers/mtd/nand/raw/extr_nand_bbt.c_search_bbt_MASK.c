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
typedef  scalar_t__ uint8_t ;
typedef  int u64 ;
struct nand_chip {int bbt_erase_shift; int page_shift; int /*<<< orphan*/  base; } ;
struct nand_bbt_descr {int options; int* pages; int maxblocks; scalar_t__* version; } ;
struct mtd_info {int writesize; int oobsize; int size; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int NAND_BBT_LASTBLOCK ; 
 int NAND_BBT_PERCHIP ; 
 int NAND_BBT_VERSION ; 
 size_t FUNC0 (struct nand_chip*,struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int,struct nand_bbt_descr*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,scalar_t__*,size_t,int,struct nand_bbt_descr*) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *this, uint8_t *buf,
		      struct nand_bbt_descr *td)
{
	u64 targetsize = FUNC4(&this->base);
	struct mtd_info *mtd = FUNC2(this);
	int i, chips;
	int startblock, block, dir;
	int scanlen = mtd->writesize + mtd->oobsize;
	int bbtblocks;
	int blocktopage = this->bbt_erase_shift - this->page_shift;

	/* Search direction top -> down? */
	if (td->options & NAND_BBT_LASTBLOCK) {
		startblock = (mtd->size >> this->bbt_erase_shift) - 1;
		dir = -1;
	} else {
		startblock = 0;
		dir = 1;
	}

	/* Do we have a bbt per chip? */
	if (td->options & NAND_BBT_PERCHIP) {
		chips = FUNC3(&this->base);
		bbtblocks = targetsize >> this->bbt_erase_shift;
		startblock &= bbtblocks - 1;
	} else {
		chips = 1;
		bbtblocks = mtd->size >> this->bbt_erase_shift;
	}

	for (i = 0; i < chips; i++) {
		/* Reset version information */
		td->version[i] = 0;
		td->pages[i] = -1;
		/* Scan the maximum number of blocks */
		for (block = 0; block < td->maxblocks; block++) {

			int actblock = startblock + dir * block;
			loff_t offs = (loff_t)actblock << this->bbt_erase_shift;

			/* Read first page */
			FUNC7(this, buf, offs, mtd->writesize, td);
			if (!FUNC1(buf, scanlen, mtd->writesize, td)) {
				td->pages[i] = actblock << blocktopage;
				if (td->options & NAND_BBT_VERSION) {
					offs = FUNC0(this, td);
					td->version[i] = buf[offs];
				}
				break;
			}
		}
		startblock += targetsize >> this->bbt_erase_shift;
	}
	/* Check, if we found a bbt for each requested chip */
	for (i = 0; i < chips; i++) {
		if (td->pages[i] == -1)
			FUNC6("Bad block table not found for chip %d\n", i);
		else
			FUNC5("Bad block table found at page %d, version 0x%02X\n",
				td->pages[i], td->version[i]);
	}
	return 0;
}