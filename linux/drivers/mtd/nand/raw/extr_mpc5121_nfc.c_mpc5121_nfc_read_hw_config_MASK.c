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
typedef  int uint ;
struct nand_chip {int /*<<< orphan*/  options; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct mpc512x_reset_module {int /*<<< orphan*/  rcwhr; } ;
struct mpc5121_nfc_prv {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc512x_reset_module*) ; 
 struct nand_chip* FUNC4 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC5 (struct nand_chip*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct mpc512x_reset_module* FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 

__attribute__((used)) static int FUNC9(struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC4(mtd);
	struct mpc5121_nfc_prv *prv = FUNC5(chip);
	struct mpc512x_reset_module *rm;
	struct device_node *rmnode;
	uint rcw_pagesize = 0;
	uint rcw_sparesize = 0;
	uint rcw_width;
	uint rcwh;
	uint romloc, ps;
	int ret = 0;

	rmnode = FUNC6(NULL, NULL, "fsl,mpc5121-reset");
	if (!rmnode) {
		FUNC0(prv->dev, "Missing 'fsl,mpc5121-reset' "
					"node in device tree!\n");
		return -ENODEV;
	}

	rm = FUNC7(rmnode, 0);
	if (!rm) {
		FUNC0(prv->dev, "Error mapping reset module node!\n");
		ret = -EBUSY;
		goto out;
	}

	rcwh = FUNC2(&rm->rcwhr);

	/* Bit 6: NFC bus width */
	rcw_width = ((rcwh >> 6) & 0x1) ? 2 : 1;

	/* Bit 7: NFC Page/Spare size */
	ps = (rcwh >> 7) & 0x1;

	/* Bits [22:21]: ROM Location */
	romloc = (rcwh >> 21) & 0x3;

	/* Decode RCW bits */
	switch ((ps << 2) | romloc) {
	case 0x00:
	case 0x01:
		rcw_pagesize = 512;
		rcw_sparesize = 16;
		break;
	case 0x02:
	case 0x03:
		rcw_pagesize = 4096;
		rcw_sparesize = 128;
		break;
	case 0x04:
	case 0x05:
		rcw_pagesize = 2048;
		rcw_sparesize = 64;
		break;
	case 0x06:
	case 0x07:
		rcw_pagesize = 4096;
		rcw_sparesize = 218;
		break;
	}

	mtd->writesize = rcw_pagesize;
	mtd->oobsize = rcw_sparesize;
	if (rcw_width == 2)
		chip->options |= NAND_BUSWIDTH_16;

	FUNC1(prv->dev, "Configured for "
				"%u-bit NAND, page size %u "
				"with %u spare.\n",
				rcw_width * 8, rcw_pagesize,
				rcw_sparesize);
	FUNC3(rm);
out:
	FUNC8(rmnode);
	return ret;
}