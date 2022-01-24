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
typedef  int u32 ;
struct TYPE_2__ {int bytes; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct fsmc_nand_data {scalar_t__ regs_va; } ;

/* Variables and functions */
 int EBADMSG ; 
 scalar_t__ ECC1 ; 
 scalar_t__ ECC2 ; 
 scalar_t__ ECC3 ; 
 scalar_t__ STS ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct fsmc_nand_data* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, u8 *dat,
				  u8 *read_ecc, u8 *calc_ecc)
{
	struct fsmc_nand_data *host = FUNC4(chip);
	u32 err_idx[8];
	u32 num_err, i;
	u32 ecc1, ecc2, ecc3, ecc4;

	num_err = (FUNC5(host->regs_va + STS) >> 10) & 0xF;

	/* no bit flipping */
	if (FUNC2(num_err == 0))
		return 0;

	/* too many errors */
	if (FUNC6(num_err > 8)) {
		/*
		 * This is a temporary erase check. A newly erased page read
		 * would result in an ecc error because the oob data is also
		 * erased to FF and the calculated ecc for an FF data is not
		 * FF..FF.
		 * This is a workaround to skip performing correction in case
		 * data is FF..FF
		 *
		 * Logic:
		 * For every page, each bit written as 0 is counted until these
		 * number of bits are greater than 8 (the maximum correction
		 * capability of FSMC for each 512 + 13 bytes)
		 */

		int bits_ecc = FUNC1(read_ecc, chip->ecc.bytes, 8);
		int bits_data = FUNC1(dat, chip->ecc.size, 8);

		if ((bits_ecc + bits_data) <= 8) {
			if (bits_data)
				FUNC3(dat, 0xff, chip->ecc.size);
			return bits_data;
		}

		return -EBADMSG;
	}

	/*
	 * ------------------- calc_ecc[] bit wise -----------|--13 bits--|
	 * |---idx[7]--|--.....-----|---idx[2]--||---idx[1]--||---idx[0]--|
	 *
	 * calc_ecc is a 104 bit information containing maximum of 8 error
	 * offset information of 13 bits each. calc_ecc is copied into a
	 * u64 array and error offset indexes are populated in err_idx
	 * array
	 */
	ecc1 = FUNC5(host->regs_va + ECC1);
	ecc2 = FUNC5(host->regs_va + ECC2);
	ecc3 = FUNC5(host->regs_va + ECC3);
	ecc4 = FUNC5(host->regs_va + STS);

	err_idx[0] = (ecc1 >> 0) & 0x1FFF;
	err_idx[1] = (ecc1 >> 13) & 0x1FFF;
	err_idx[2] = (((ecc2 >> 0) & 0x7F) << 6) | ((ecc1 >> 26) & 0x3F);
	err_idx[3] = (ecc2 >> 7) & 0x1FFF;
	err_idx[4] = (((ecc3 >> 0) & 0x1) << 12) | ((ecc2 >> 20) & 0xFFF);
	err_idx[5] = (ecc3 >> 1) & 0x1FFF;
	err_idx[6] = (ecc3 >> 14) & 0x1FFF;
	err_idx[7] = (((ecc4 >> 16) & 0xFF) << 5) | ((ecc3 >> 27) & 0x1F);

	i = 0;
	while (num_err--) {
		FUNC0(0, (unsigned long *)&err_idx[i]);
		FUNC0(1, (unsigned long *)&err_idx[i]);

		if (err_idx[i] < chip->ecc.size * 8) {
			FUNC0(err_idx[i], (unsigned long *)dat);
			i++;
		}
	}
	return i;
}