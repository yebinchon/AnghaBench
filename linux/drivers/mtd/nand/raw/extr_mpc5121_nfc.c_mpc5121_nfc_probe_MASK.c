#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {unsigned long start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  select_chip; void* get_features; void* set_features; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  cmdfunc; int /*<<< orphan*/  dev_ready; } ;
struct TYPE_5__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__ legacy; TYPE_2__ ecc; int /*<<< orphan*/  bbt_options; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {char* name; int oobsize; int erasesize; int writesize; TYPE_1__ dev; } ;
struct mpc5121_nfc_prv {scalar_t__ irq; int /*<<< orphan*/  irq_waitq; struct clk* clk; int /*<<< orphan*/  regs; struct device* dev; struct nand_chip chip; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  NAND_BBT_USE_FLASH ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int NFC_BIG_ENDIAN ; 
 int NFC_BLS_UNLOCKED ; 
 int /*<<< orphan*/  NFC_CONFIG ; 
 int /*<<< orphan*/  NFC_CONFIG1 ; 
 int NFC_FULL_PAGE_INT ; 
 int NFC_INT_MASK ; 
 int NFC_PPB_128 ; 
 int NFC_PPB_256 ; 
 int NFC_PPB_32 ; 
 int NFC_PPB_64 ; 
 int NFC_RESET ; 
 int /*<<< orphan*/  NFC_RESET_TIMEOUT ; 
 int /*<<< orphan*/  NFC_SPAS ; 
 int /*<<< orphan*/  NFC_UNLOCKEND_BLK0 ; 
 int /*<<< orphan*/  NFC_UNLOCKSTART_BLK0 ; 
 int NFC_WPC_UNLOCK ; 
 int /*<<< orphan*/  NFC_WRPROT ; 
 scalar_t__ NO_IRQ ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  SPRN_SVR ; 
 int FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  ads5121_select_chip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct mtd_info*) ; 
 struct clk* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,unsigned long,unsigned long) ; 
 struct mpc5121_nfc_prv* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc5121_nfc_command ; 
 int /*<<< orphan*/  mpc5121_nfc_dev_ready ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct mtd_info*) ; 
 int /*<<< orphan*/  mpc5121_nfc_irq ; 
 int /*<<< orphan*/  mpc5121_nfc_read_buf ; 
 int /*<<< orphan*/  mpc5121_nfc_read_byte ; 
 int FUNC16 (struct mtd_info*) ; 
 int /*<<< orphan*/  mpc5121_nfc_select_chip ; 
 int /*<<< orphan*/  mpc5121_nfc_write_buf ; 
 int FUNC17 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* nand_get_set_features_notsupp ; 
 int FUNC18 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nand_chip*,struct mpc5121_nfc_prv*) ; 
 int /*<<< orphan*/  FUNC20 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC21 (struct nand_chip*) ; 
 int FUNC22 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC25 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/ * FUNC26 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC27 (char*) ; 
 unsigned long FUNC28 (struct resource*) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 

__attribute__((used)) static int FUNC30(struct platform_device *op)
{
	struct device_node *dn = op->dev.of_node;
	struct clk *clk;
	struct device *dev = &op->dev;
	struct mpc5121_nfc_prv *prv;
	struct resource res;
	struct mtd_info *mtd;
	struct nand_chip *chip;
	unsigned long regs_paddr, regs_size;
	const __be32 *chips_no;
	int resettime = 0;
	int retval = 0;
	int rev, len;

	/*
	 * Check SoC revision. This driver supports only NFC
	 * in MPC5121 revision 2 and MPC5123 revision 3.
	 */
	rev = (FUNC14(SPRN_SVR) >> 4) & 0xF;
	if ((rev != 2) && (rev != 3)) {
		FUNC5(dev, "SoC revision %u is not supported!\n", rev);
		return -ENXIO;
	}

	prv = FUNC9(dev, sizeof(*prv), GFP_KERNEL);
	if (!prv)
		return -ENOMEM;

	chip = &prv->chip;
	mtd = FUNC21(chip);

	mtd->dev.parent = dev;
	FUNC19(chip, prv);
	FUNC20(chip, dn);
	prv->dev = dev;

	/* Read NFC configuration from Reset Config Word */
	retval = FUNC16(mtd);
	if (retval) {
		FUNC5(dev, "Unable to read NFC config!\n");
		return retval;
	}

	prv->irq = FUNC13(dn, 0);
	if (prv->irq == NO_IRQ) {
		FUNC5(dev, "Error mapping IRQ!\n");
		return -EINVAL;
	}

	retval = FUNC25(dn, 0, &res);
	if (retval) {
		FUNC5(dev, "Error parsing memory region!\n");
		return retval;
	}

	chips_no = FUNC26(dn, "chips", &len);
	if (!chips_no || len != sizeof(*chips_no)) {
		FUNC5(dev, "Invalid/missing 'chips' property!\n");
		return -EINVAL;
	}

	regs_paddr = res.start;
	regs_size = FUNC28(&res);

	if (!FUNC11(dev, regs_paddr, regs_size, DRV_NAME)) {
		FUNC5(dev, "Error requesting memory region!\n");
		return -EBUSY;
	}

	prv->regs = FUNC8(dev, regs_paddr, regs_size);
	if (!prv->regs) {
		FUNC5(dev, "Error mapping memory region!\n");
		return -ENOMEM;
	}

	mtd->name = "MPC5121 NAND";
	chip->legacy.dev_ready = mpc5121_nfc_dev_ready;
	chip->legacy.cmdfunc = mpc5121_nfc_command;
	chip->legacy.read_byte = mpc5121_nfc_read_byte;
	chip->legacy.read_buf = mpc5121_nfc_read_buf;
	chip->legacy.write_buf = mpc5121_nfc_write_buf;
	chip->legacy.select_chip = mpc5121_nfc_select_chip;
	chip->legacy.set_features = nand_get_set_features_notsupp;
	chip->legacy.get_features = nand_get_set_features_notsupp;
	chip->bbt_options = NAND_BBT_USE_FLASH;
	chip->ecc.mode = NAND_ECC_SOFT;
	chip->ecc.algo = NAND_ECC_HAMMING;

	/* Support external chip-select logic on ADS5121 board */
	if (FUNC27("fsl,mpc5121ads")) {
		retval = FUNC2(mtd);
		if (retval) {
			FUNC5(dev, "Chipselect init error!\n");
			return retval;
		}

		chip->legacy.select_chip = ads5121_select_chip;
	}

	/* Enable NFC clock */
	clk = FUNC7(dev, "ipg");
	if (FUNC0(clk)) {
		FUNC5(dev, "Unable to acquire NFC clock!\n");
		retval = FUNC1(clk);
		goto error;
	}
	retval = FUNC4(clk);
	if (retval) {
		FUNC5(dev, "Unable to enable NFC clock!\n");
		goto error;
	}
	prv->clk = clk;

	/* Reset NAND Flash controller */
	FUNC23(mtd, NFC_CONFIG1, NFC_RESET);
	while (FUNC22(mtd, NFC_CONFIG1) & NFC_RESET) {
		if (resettime++ >= NFC_RESET_TIMEOUT) {
			FUNC5(dev, "Timeout while resetting NFC!\n");
			retval = -EINVAL;
			goto error;
		}

		FUNC29(1);
	}

	/* Enable write to NFC memory */
	FUNC24(mtd, NFC_CONFIG, NFC_BLS_UNLOCKED);

	/* Enable write to all NAND pages */
	FUNC24(mtd, NFC_UNLOCKSTART_BLK0, 0x0000);
	FUNC24(mtd, NFC_UNLOCKEND_BLK0, 0xFFFF);
	FUNC24(mtd, NFC_WRPROT, NFC_WPC_UNLOCK);

	/*
	 * Setup NFC:
	 *	- Big Endian transfers,
	 *	- Interrupt after full page read/write.
	 */
	FUNC24(mtd, NFC_CONFIG1, NFC_BIG_ENDIAN | NFC_INT_MASK |
							NFC_FULL_PAGE_INT);

	/* Set spare area size */
	FUNC24(mtd, NFC_SPAS, mtd->oobsize >> 1);

	FUNC12(&prv->irq_waitq);
	retval = FUNC10(dev, prv->irq, &mpc5121_nfc_irq, 0, DRV_NAME,
									mtd);
	if (retval) {
		FUNC5(dev, "Error requesting IRQ!\n");
		goto error;
	}

	/* Detect NAND chips */
	retval = FUNC18(chip, FUNC3(chips_no));
	if (retval) {
		FUNC5(dev, "NAND Flash not found !\n");
		goto error;
	}

	/* Set erase block size */
	switch (mtd->erasesize / mtd->writesize) {
	case 32:
		FUNC23(mtd, NFC_CONFIG1, NFC_PPB_32);
		break;

	case 64:
		FUNC23(mtd, NFC_CONFIG1, NFC_PPB_64);
		break;

	case 128:
		FUNC23(mtd, NFC_CONFIG1, NFC_PPB_128);
		break;

	case 256:
		FUNC23(mtd, NFC_CONFIG1, NFC_PPB_256);
		break;

	default:
		FUNC5(dev, "Unsupported NAND flash!\n");
		retval = -ENXIO;
		goto error;
	}

	FUNC6(dev, mtd);

	/* Register device in MTD */
	retval = FUNC17(mtd, NULL, 0);
	if (retval) {
		FUNC5(dev, "Error adding MTD device!\n");
		goto error;
	}

	return 0;
error:
	FUNC15(dev, mtd);
	return retval;
}