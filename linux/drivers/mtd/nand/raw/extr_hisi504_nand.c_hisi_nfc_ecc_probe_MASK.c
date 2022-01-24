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
struct TYPE_2__ {int size; int strength; int /*<<< orphan*/  write_page; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  read_page; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;
struct hinfc_host {struct nand_chip chip; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HINFC504_CON ; 
 int HINFC504_CON_ECCTYPE_MASK ; 
 int HINFC504_CON_ECCTYPE_SHIFT ; 
 int /*<<< orphan*/  HINFC504_INTEN ; 
 unsigned int HINFC504_INTEN_CE ; 
 unsigned int HINFC504_INTEN_UE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct hinfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hinfc_host*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hisi_nand_read_oob ; 
 int /*<<< orphan*/  hisi_nand_read_page_hwecc ; 
 int /*<<< orphan*/  hisi_nand_write_page_hwecc ; 
 int /*<<< orphan*/  hisi_ooblayout_ops ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct hinfc_host *host)
{
	unsigned int flag;
	int size, strength, ecc_bits;
	struct device *dev = host->dev;
	struct nand_chip *chip = &host->chip;
	struct mtd_info *mtd = FUNC4(chip);

	size = chip->ecc.size;
	strength = chip->ecc.strength;
	if (size != 1024) {
		FUNC0(dev, "error ecc size: %d\n", size);
		return -EINVAL;
	}

	if ((size == 1024) && ((strength != 8) && (strength != 16) &&
				(strength != 24) && (strength != 40))) {
		FUNC0(dev, "ecc size and strength do not match\n");
		return -EINVAL;
	}

	chip->ecc.size = size;
	chip->ecc.strength = strength;

	chip->ecc.read_page = hisi_nand_read_page_hwecc;
	chip->ecc.read_oob = hisi_nand_read_oob;
	chip->ecc.write_page = hisi_nand_write_page_hwecc;

	switch (chip->ecc.strength) {
	case 16:
		ecc_bits = 6;
		if (mtd->writesize == 2048)
			FUNC3(mtd, &hisi_ooblayout_ops);

		/* TODO: add more page size support */
		break;

	/* TODO: add more ecc strength support */
	default:
		FUNC0(dev, "not support strength: %d\n", chip->ecc.strength);
		return -EINVAL;
	}

	flag = FUNC1(host, HINFC504_CON);
	/* add ecc type configure */
	flag |= ((ecc_bits & HINFC504_CON_ECCTYPE_MASK)
						<< HINFC504_CON_ECCTYPE_SHIFT);
	FUNC2(host, flag, HINFC504_CON);

	/* enable ecc irq */
	flag = FUNC1(host, HINFC504_INTEN) & 0xfff;
	FUNC2(host, flag | HINFC504_INTEN_UE | HINFC504_INTEN_CE,
		    HINFC504_INTEN);

	return 0;
}