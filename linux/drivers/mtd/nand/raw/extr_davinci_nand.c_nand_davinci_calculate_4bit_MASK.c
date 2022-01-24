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
typedef  int /*<<< orphan*/  u_char ;
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct davinci_nand_info {scalar_t__ is_readmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_4BIT_ECC1_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_nand_info*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct davinci_nand_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
				       const u_char *dat, u_char *ecc_code)
{
	struct davinci_nand_info *info = FUNC3(FUNC2(chip));
	u32 raw_ecc[4], *p;
	unsigned i;

	/* After a read, terminate ECC calculation by a dummy read
	 * of some 4-bit ECC register.  ECC covers everything that
	 * was read; correct() just uses the hardware state, so
	 * ecc_code is not needed.
	 */
	if (info->is_readmode) {
		FUNC0(info, NAND_4BIT_ECC1_OFFSET);
		return 0;
	}

	/* Pack eight raw 10-bit ecc values into ten bytes, making
	 * two passes which each convert four values (in upper and
	 * lower halves of two 32-bit words) into five bytes.  The
	 * ROM boot loader uses this same packing scheme.
	 */
	FUNC1(info, raw_ecc);
	for (i = 0, p = raw_ecc; i < 2; i++, p += 2) {
		*ecc_code++ =   p[0]        & 0xff;
		*ecc_code++ = ((p[0] >>  8) & 0x03) | ((p[0] >> 14) & 0xfc);
		*ecc_code++ = ((p[0] >> 22) & 0x0f) | ((p[1] <<  4) & 0xf0);
		*ecc_code++ = ((p[1] >>  4) & 0x3f) | ((p[1] >> 10) & 0xc0);
		*ecc_code++ =  (p[1] >> 18) & 0xff;
	}

	return 0;
}