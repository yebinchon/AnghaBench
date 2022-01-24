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
typedef  int uint8_t ;
typedef  scalar_t__ u32 ;
struct nand_chip {size_t page_shift; int bbt_erase_shift; } ;
struct nand_bbt_descr {int options; int reserved_block_code; } ;
struct TYPE_2__ {int /*<<< orphan*/  badblocks; int /*<<< orphan*/  bbtblocks; } ;
struct mtd_info {size_t writesize; TYPE_1__ ecc_stats; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  BBT_BLOCK_FACTORY_BAD ; 
 int /*<<< orphan*/  BBT_BLOCK_RESERVED ; 
 int /*<<< orphan*/  BBT_BLOCK_WORN ; 
 int NAND_BBT_NRBITS_MSK ; 
 scalar_t__ FUNC0 (struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct mtd_info*,size_t,size_t,size_t*,int*) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *this, uint8_t *buf, int page, int num,
		    struct nand_bbt_descr *td, int offs)
{
	struct mtd_info *mtd = FUNC6(this);
	int res, ret = 0, i, j, act = 0;
	size_t retlen, len, totlen;
	loff_t from;
	int bits = td->options & NAND_BBT_NRBITS_MSK;
	uint8_t msk = (uint8_t)((1 << bits) - 1);
	u32 marker_len;
	int reserved_block_code = td->reserved_block_code;

	totlen = (num * bits) >> 3;
	marker_len = FUNC0(td);
	from = ((loff_t)page) << this->page_shift;

	while (totlen) {
		len = FUNC2(totlen, (size_t)(1 << this->bbt_erase_shift));
		if (marker_len) {
			/*
			 * In case the BBT marker is not in the OOB area it
			 * will be just in the first page.
			 */
			len -= marker_len;
			from += marker_len;
			marker_len = 0;
		}
		res = FUNC5(mtd, from, len, &retlen, buf);
		if (res < 0) {
			if (FUNC4(res)) {
				FUNC7("nand_bbt: ECC error in BBT at 0x%012llx\n",
					from & ~mtd->writesize);
				return res;
			} else if (FUNC3(res)) {
				FUNC7("nand_bbt: corrected error in BBT at 0x%012llx\n",
					from & ~mtd->writesize);
				ret = res;
			} else {
				FUNC7("nand_bbt: error reading BBT\n");
				return res;
			}
		}

		/* Analyse data */
		for (i = 0; i < len; i++) {
			uint8_t dat = buf[i];
			for (j = 0; j < 8; j += bits, act++) {
				uint8_t tmp = (dat >> j) & msk;
				if (tmp == msk)
					continue;
				if (reserved_block_code && (tmp == reserved_block_code)) {
					FUNC7("nand_read_bbt: reserved block at 0x%012llx\n",
						 (loff_t)(offs + act) <<
						 this->bbt_erase_shift);
					FUNC1(this, offs + act,
							BBT_BLOCK_RESERVED);
					mtd->ecc_stats.bbtblocks++;
					continue;
				}
				/*
				 * Leave it for now, if it's matured we can
				 * move this message to pr_debug.
				 */
				FUNC7("nand_read_bbt: bad block at 0x%012llx\n",
					 (loff_t)(offs + act) <<
					 this->bbt_erase_shift);
				/* Factory marked bad or worn out? */
				if (tmp == 0)
					FUNC1(this, offs + act,
							BBT_BLOCK_FACTORY_BAD);
				else
					FUNC1(this, offs + act,
							BBT_BLOCK_WORN);
				mtd->ecc_stats.badblocks++;
			}
		}
		totlen -= len;
		from += len;
	}
	return ret;
}