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
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {scalar_t__ writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,int*,unsigned int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *nand, uint8_t *buf,
				      int oob_required, int page)
{
	struct mtd_info *mtd = FUNC1(nand);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	unsigned int max_bitflips = 0;
	int ret, i, cur_off = 0;
	bool raw_mode = false;

	FUNC6(nand, nand->cur_cs);

	FUNC0(nand, page, 0, NULL, 0);

	FUNC3(nand);

	for (i = 0; i < ecc->steps; i++) {
		int data_off = i * ecc->size;
		int oob_off = i * (ecc->bytes + 4);
		u8 *data = buf + data_off;
		u8 *oob = nand->oob_poi + oob_off;

		ret = FUNC4(nand, data, data_off, oob,
						  oob_off + mtd->writesize,
						  &cur_off, &max_bitflips,
						  !i, oob_required, page);
		if (ret < 0)
			return ret;
		else if (ret)
			raw_mode = true;
	}

	if (oob_required)
		FUNC5(nand, nand->oob_poi, &cur_off,
						!raw_mode, page);

	FUNC2(nand);

	return max_bitflips;
}