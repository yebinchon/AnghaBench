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
struct nand_chip {int bbt_erase_shift; int page_shift; int /*<<< orphan*/ * bbt; struct nand_bbt_descr* bbt_md; struct nand_bbt_descr* bbt_td; } ;
struct nand_bbt_descr {int options; } ;
struct mtd_info {int size; int oobsize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BBT_ABSPAGE ; 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,struct nand_bbt_descr*) ; 
 int FUNC4 (struct nand_chip*,struct nand_bbt_descr*) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ *,struct nand_bbt_descr*,struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/ *,struct nand_bbt_descr*,struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,struct nand_bbt_descr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct nand_chip *this, struct nand_bbt_descr *bd)
{
	struct mtd_info *mtd = FUNC5(this);
	int len, res;
	uint8_t *buf;
	struct nand_bbt_descr *td = this->bbt_td;
	struct nand_bbt_descr *md = this->bbt_md;

	len = (mtd->size >> (this->bbt_erase_shift + 2)) ? : 1;
	/*
	 * Allocate memory (2bit per block) and clear the memory bad block
	 * table.
	 */
	this->bbt = FUNC2(len, GFP_KERNEL);
	if (!this->bbt)
		return -ENOMEM;

	/*
	 * If no primary table decriptor is given, scan the device to build a
	 * memory based bad block table.
	 */
	if (!td) {
		if ((res = FUNC4(this, bd))) {
			FUNC6("nand_bbt: can't scan flash and build the RAM-based BBT\n");
			goto err_free_bbt;
		}
		return 0;
	}
	FUNC9(this, td);
	FUNC9(this, md);

	/* Allocate a temporary buffer for one eraseblock incl. oob */
	len = (1 << this->bbt_erase_shift);
	len += (len >> this->page_shift) * mtd->oobsize;
	buf = FUNC11(len);
	if (!buf) {
		res = -ENOMEM;
		goto err_free_bbt;
	}

	/* Is the bbt at a given page? */
	if (td->options & NAND_BBT_ABSPAGE) {
		FUNC7(this, buf, td, md);
	} else {
		/* Search the bad block table using a pattern in oob */
		FUNC8(this, buf, td, md);
	}

	res = FUNC0(this, buf, bd);
	if (res)
		goto err_free_buf;

	/* Prevent the bbt regions from erasing / writing */
	FUNC3(this, td);
	if (md)
		FUNC3(this, md);

	FUNC10(buf);
	return 0;

err_free_buf:
	FUNC10(buf);
err_free_bbt:
	FUNC1(this->bbt);
	this->bbt = NULL;
	return res;
}