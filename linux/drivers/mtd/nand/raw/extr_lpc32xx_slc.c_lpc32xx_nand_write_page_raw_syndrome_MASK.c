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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* write_buf ) (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int size; int steps; } ;
struct nand_chip {int /*<<< orphan*/  oob_poi; TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (struct nand_chip*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
						const uint8_t *buf,
						int oob_required, int page)
{
	struct mtd_info *mtd = FUNC2(chip);

	/* Raw writes can just use the FIFO interface */
	FUNC0(chip, page, 0, buf,
				chip->ecc.size * chip->ecc.steps);
	chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);

	return FUNC1(chip);
}