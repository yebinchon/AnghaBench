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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {scalar_t__ mode; int size; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct omap_nand_info {TYPE_2__ nand; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ NAND_ECC_HW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct omap_nand_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, u_char *dat,
			     u_char *read_ecc, u_char *calc_ecc)
{
	struct omap_nand_info *info = FUNC1(FUNC2(chip));
	int blockCnt = 0, i = 0, ret = 0;
	int stat = 0;

	/* Ex NAND_ECC_HW12_2048 */
	if ((info->nand.ecc.mode == NAND_ECC_HW) &&
			(info->nand.ecc.size  == 2048))
		blockCnt = 4;
	else
		blockCnt = 1;

	for (i = 0; i < blockCnt; i++) {
		if (FUNC0(read_ecc, calc_ecc, 3) != 0) {
			ret = FUNC3(read_ecc, calc_ecc, dat);
			if (ret < 0)
				return ret;
			/* keep track of the number of corrected errors */
			stat += ret;
		}
		read_ecc += 3;
		calc_ecc += 3;
		dat      += 512;
	}
	return stat;
}