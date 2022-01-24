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
struct TYPE_2__ {int bytes; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int const BBM_SIZE ; 
 int const METADATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int /*<<< orphan*/ **,int const,int*) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, u8 *buf, u8 *oob)
{
	struct mtd_info *mtd = FUNC1(chip);
	u8 *oob_orig = oob;
	const int page_size = mtd->writesize;
	const int ecc_size = chip->ecc.bytes;
	const int pkt_size = chip->ecc.size;
	int pos = 0; /* position within physical page */
	int rem = page_size; /* bytes remaining until BBM area */

	if (oob)
		oob += BBM_SIZE;

	FUNC0(chip, &oob, METADATA_SIZE, &pos);

	while (rem > pkt_size) {
		FUNC0(chip, &buf, pkt_size, &pos);
		FUNC0(chip, &oob, ecc_size, &pos);
		rem = page_size - pos;
	}

	FUNC0(chip, &buf, rem, &pos);
	FUNC0(chip, &oob_orig, BBM_SIZE, &pos);
	FUNC0(chip, &buf, pkt_size - rem, &pos);
	FUNC0(chip, &oob, ecc_size, &pos);
}