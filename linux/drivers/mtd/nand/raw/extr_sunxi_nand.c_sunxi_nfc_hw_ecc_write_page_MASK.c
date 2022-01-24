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
typedef  int /*<<< orphan*/  u8 ;
struct nand_ecc_ctrl {int steps; int size; int bytes; } ;
struct nand_chip {int options; int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {scalar_t__ writesize; } ;

/* Variables and functions */
 int NAND_NEED_SCRAMBLING ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,scalar_t__,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *nand,
				       const uint8_t *buf, int oob_required,
				       int page)
{
	struct mtd_info *mtd = FUNC2(nand);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	int ret, i, cur_off = 0;

	FUNC7(nand, nand->cur_cs);

	FUNC0(nand, page, 0, NULL, 0);

	FUNC4(nand);

	for (i = 0; i < ecc->steps; i++) {
		int data_off = i * ecc->size;
		int oob_off = i * (ecc->bytes + 4);
		const u8 *data = buf + data_off;
		const u8 *oob = nand->oob_poi + oob_off;

		ret = FUNC5(nand, data, data_off, oob,
						   oob_off + mtd->writesize,
						   &cur_off, !i, page);
		if (ret)
			return ret;
	}

	if (oob_required || (nand->options & NAND_NEED_SCRAMBLING))
		FUNC6(nand, nand->oob_poi,
						 &cur_off, page);

	FUNC3(nand);

	return FUNC1(nand);
}