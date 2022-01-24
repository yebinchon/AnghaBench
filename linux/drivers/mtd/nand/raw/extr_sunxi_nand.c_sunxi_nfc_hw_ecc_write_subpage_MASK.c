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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nand_ecc_ctrl {int size; int bytes; } ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {scalar_t__ writesize; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,scalar_t__,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *nand,
					  u32 data_offs, u32 data_len,
					  const u8 *buf, int oob_required,
					  int page)
{
	struct mtd_info *mtd = FUNC3(nand);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	int ret, i, cur_off = 0;

	FUNC7(nand, nand->cur_cs);

	FUNC1(nand, page, 0, NULL, 0);

	FUNC5(nand);

	for (i = data_offs / ecc->size;
	     i < FUNC0(data_offs + data_len, ecc->size); i++) {
		int data_off = i * ecc->size;
		int oob_off = i * (ecc->bytes + 4);
		const u8 *data = buf + data_off;
		const u8 *oob = nand->oob_poi + oob_off;

		ret = FUNC6(nand, data, data_off, oob,
						   oob_off + mtd->writesize,
						   &cur_off, !i, page);
		if (ret)
			return ret;
	}

	FUNC4(nand);

	return FUNC2(nand);
}