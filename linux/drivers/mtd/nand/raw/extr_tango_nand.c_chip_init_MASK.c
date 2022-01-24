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
typedef  int u32 ;
struct tango_nfc {struct tango_chip** chips; scalar_t__ pbus_base; int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; int /*<<< orphan*/  select_chip; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; } ;
struct nand_ecc_ctrl {int /*<<< orphan*/  strength; scalar_t__ size; int /*<<< orphan*/  steps; } ;
struct nand_chip {int options; int /*<<< orphan*/ * controller; TYPE_1__ legacy; struct nand_ecc_ctrl ecc; } ;
struct tango_chip {int /*<<< orphan*/  bb_cfg; void* pkt_n_cfg; void* pkt_0_cfg; int /*<<< orphan*/  xfer_cfg; scalar_t__ base; struct nand_chip nand_chip; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {int /*<<< orphan*/  writesize; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_CS ; 
 scalar_t__ METADATA_SIZE ; 
 int NAND_NO_SUBPAGE_WRITE ; 
 int NAND_USE_BOUNCE_BUFFER ; 
 int NAND_WAIT_TCCS ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tango_nfc* FUNC3 (struct device*) ; 
 struct tango_chip* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int FUNC8 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC10 (struct nand_chip*) ; 
 int FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  tango_cmd_ctrl ; 
 int /*<<< orphan*/  tango_dev_ready ; 
 int /*<<< orphan*/  tango_nand_ooblayout_ops ; 
 int /*<<< orphan*/  tango_read_buf ; 
 int /*<<< orphan*/  tango_read_byte ; 
 int /*<<< orphan*/  tango_select_chip ; 
 int /*<<< orphan*/  tango_write_buf ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct device_node *np)
{
	u32 cs;
	int err, res;
	struct mtd_info *mtd;
	struct nand_chip *chip;
	struct tango_chip *tchip;
	struct nand_ecc_ctrl *ecc;
	struct tango_nfc *nfc = FUNC3(dev);

	tchip = FUNC4(dev, sizeof(*tchip), GFP_KERNEL);
	if (!tchip)
		return -ENOMEM;

	res = FUNC11(np, "reg");
	if (res < 0)
		return res;

	if (res != 1)
		return -ENOTSUPP; /* Multi-CS chips are not supported */

	err = FUNC12(np, "reg", 0, &cs);
	if (err)
		return err;

	if (cs >= MAX_CS)
		return -EINVAL;

	chip = &tchip->nand_chip;
	ecc = &chip->ecc;
	mtd = FUNC10(chip);

	chip->legacy.read_byte = tango_read_byte;
	chip->legacy.write_buf = tango_write_buf;
	chip->legacy.read_buf = tango_read_buf;
	chip->legacy.select_chip = tango_select_chip;
	chip->legacy.cmd_ctrl = tango_cmd_ctrl;
	chip->legacy.dev_ready = tango_dev_ready;
	chip->options = NAND_USE_BOUNCE_BUFFER |
			NAND_NO_SUBPAGE_WRITE |
			NAND_WAIT_TCCS;
	chip->controller = &nfc->hw;
	tchip->base = nfc->pbus_base + (cs * 256);

	FUNC9(chip, np);
	FUNC6(mtd, &tango_nand_ooblayout_ops);
	mtd->dev.parent = dev;

	err = FUNC8(chip, 1);
	if (err)
		return err;

	tchip->xfer_cfg = FUNC2(cs, 1, ecc->steps, METADATA_SIZE);
	tchip->pkt_0_cfg = FUNC1(ecc->size + METADATA_SIZE, ecc->strength);
	tchip->pkt_n_cfg = FUNC1(ecc->size, ecc->strength);
	tchip->bb_cfg = FUNC0(mtd->writesize, BBM_SIZE);

	err = FUNC5(mtd, NULL, 0);
	if (err) {
		FUNC7(chip);
		return err;
	}

	nfc->chips[cs] = tchip;

	return 0;
}