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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; } ;
struct marvell_hw_ecc_layout {unsigned int data_bytes; unsigned int spare_bytes; unsigned int ecc_bytes; } ;
struct TYPE_2__ {struct marvell_hw_ecc_layout* layout; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, u8 *buf,
					    int oob_required, int page)
{
	const struct marvell_hw_ecc_layout *lt = FUNC8(chip)->layout;
	unsigned int full_sz = lt->data_bytes + lt->spare_bytes + lt->ecc_bytes;
	int max_bitflips = 0, ret;
	u8 *raw_buf;

	FUNC7(chip, chip->cur_cs);
	FUNC4(chip);
	FUNC6(chip, buf, chip->oob_poi, false,
					    page);
	ret = FUNC5(chip, &max_bitflips);
	FUNC3(chip);

	if (!ret)
		return max_bitflips;

	/*
	 * When ECC failures are detected, check if the full page has been
	 * written or not. Ignore the failure if it is actually empty.
	 */
	raw_buf = FUNC1(full_sz, GFP_KERNEL);
	if (!raw_buf)
		return -ENOMEM;

	FUNC6(chip, raw_buf, raw_buf +
					    lt->data_bytes, true, page);
	FUNC2(chip, raw_buf, full_sz, NULL, 0, NULL, 0,
				      &max_bitflips);
	FUNC0(raw_buf);

	return max_bitflips;
}