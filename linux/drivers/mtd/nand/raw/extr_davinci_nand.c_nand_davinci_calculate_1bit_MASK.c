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
typedef  scalar_t__ u_char ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip,
				       const u_char *dat, u_char *ecc_code)
{
	unsigned int ecc_val = FUNC0(FUNC1(chip));
	unsigned int ecc24 = (ecc_val & 0x0fff) | ((ecc_val & 0x0fff0000) >> 4);

	/* invert so that erased block ecc is correct */
	ecc24 = ~ecc24;
	ecc_code[0] = (u_char)(ecc24);
	ecc_code[1] = (u_char)(ecc24 >> 8);
	ecc_code[2] = (u_char)(ecc24 >> 16);

	return 0;
}