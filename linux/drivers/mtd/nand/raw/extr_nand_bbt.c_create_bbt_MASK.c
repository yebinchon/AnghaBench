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
typedef  int u64 ;
struct nand_chip {int bbt_erase_shift; int /*<<< orphan*/  base; } ;
struct nand_bbt_descr {int options; } ;
struct TYPE_2__ {int /*<<< orphan*/  badblocks; } ;
struct mtd_info {int size; TYPE_1__ ecc_stats; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  BBT_BLOCK_FACTORY_BAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int NAND_BBT_NO_OOB ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long long) ; 
 int FUNC7 (struct nand_chip*,struct nand_bbt_descr*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *this, uint8_t *buf,
		      struct nand_bbt_descr *bd, int chip)
{
	u64 targetsize = FUNC4(&this->base);
	struct mtd_info *mtd = FUNC2(this);
	int i, numblocks, startblock;
	loff_t from;

	FUNC5("Scanning device for bad blocks\n");

	if (chip == -1) {
		numblocks = mtd->size >> this->bbt_erase_shift;
		startblock = 0;
		from = 0;
	} else {
		if (chip >= FUNC3(&this->base)) {
			FUNC6("create_bbt(): chipnr (%d) > available chips (%d)\n",
			        chip + 1, FUNC3(&this->base));
			return -EINVAL;
		}
		numblocks = targetsize >> this->bbt_erase_shift;
		startblock = chip * numblocks;
		numblocks += startblock;
		from = (loff_t)startblock << this->bbt_erase_shift;
	}

	for (i = startblock; i < numblocks; i++) {
		int ret;

		FUNC0(bd->options & NAND_BBT_NO_OOB);

		ret = FUNC7(this, bd, from, buf);
		if (ret < 0)
			return ret;

		if (ret) {
			FUNC1(this, i, BBT_BLOCK_FACTORY_BAD);
			FUNC6("Bad eraseblock %d at 0x%012llx\n",
				i, (unsigned long long)from);
			mtd->ecc_stats.badblocks++;
		}

		from += (1 << this->bbt_erase_shift);
	}
	return 0;
}