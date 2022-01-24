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
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; } ;
struct hinfc_host {int irq_status; } ;

/* Variables and functions */
 int EBADMSG ; 
 int HINFC504_INTS_UE ; 
 struct hinfc_host* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC2(chip);
	struct hinfc_host *host = FUNC0(chip);

	FUNC1(chip, page, 0, chip->oob_poi, mtd->oobsize);

	if (host->irq_status & HINFC504_INTS_UE) {
		host->irq_status = 0;
		return -EBADMSG;
	}

	host->irq_status = 0;
	return 0;
}