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
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_info {int writesize; } ;
struct brcmnand_host {int /*<<< orphan*/  last_addr; } ;

/* Variables and functions */
 int FC_SHIFT ; 
 int FUNC0 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct brcmnand_host* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, uint8_t *buf,
			      int oob_required, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct brcmnand_host *host = FUNC1(chip);
	u8 *oob = oob_required ? (u8 *)chip->oob_poi : NULL;

	FUNC2(chip, page, 0, NULL, 0);

	return FUNC0(mtd, chip, host->last_addr,
			mtd->writesize >> FC_SHIFT, (u32 *)buf, oob);
}