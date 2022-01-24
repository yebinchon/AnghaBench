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
struct nand_ecc_ctrl {int bytes; int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int oobsize; int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *nand,
					    u8 *oob, int *cur_off,
					    bool randomize, int page)
{
	struct mtd_info *mtd = FUNC1(nand);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	int offset = ((ecc->bytes + 4) * ecc->steps);
	int len = mtd->oobsize - offset;

	if (len <= 0)
		return;

	if (!cur_off || *cur_off != offset)
		FUNC0(nand, mtd->writesize, NULL, 0,
					   false);

	if (!randomize)
		FUNC3(nand, oob + offset, len);
	else
		FUNC2(nand, oob + offset, len,
					      false, page);

	if (cur_off)
		*cur_off = mtd->oobsize + mtd->writesize;
}