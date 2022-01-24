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
struct TYPE_2__ {unsigned int bytes; int /*<<< orphan*/  size; struct nand_bch_control* priv; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct nand_bch_control {unsigned char* eccmask; int /*<<< orphan*/  bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct nand_chip *chip, const unsigned char *buf,
			   unsigned char *code)
{
	struct nand_bch_control *nbc = chip->ecc.priv;
	unsigned int i;

	FUNC1(code, 0, chip->ecc.bytes);
	FUNC0(nbc->bch, buf, chip->ecc.size, code);

	/* apply mask so that an erased page is a valid codeword */
	for (i = 0; i < chip->ecc.bytes; i++)
		code[i] ^= nbc->eccmask[i];

	return 0;
}