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
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {TYPE_2__ dummy_controller; void* get_features; void* set_features; int /*<<< orphan*/  chip_delay; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  select_chip; int /*<<< orphan*/  cmdfunc; } ;
struct nand_chip {TYPE_3__ legacy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;
struct hinfc_host {void* mmio; void* iobase; struct nand_chip chip; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HINFC504_CHIP_DELAY ; 
 int HINFC504_MAX_CHIP ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 struct hinfc_host* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct hinfc_host*) ; 
 int /*<<< orphan*/  hinfc_irq_handle ; 
 int /*<<< orphan*/  hisi_nfc_cmdfunc ; 
 int /*<<< orphan*/  hisi_nfc_controller_ops ; 
 int /*<<< orphan*/  FUNC6 (struct hinfc_host*) ; 
 int /*<<< orphan*/  hisi_nfc_read_buf ; 
 int /*<<< orphan*/  hisi_nfc_read_byte ; 
 int /*<<< orphan*/  hisi_nfc_select_chip ; 
 int /*<<< orphan*/  hisi_nfc_write_buf ; 
 int FUNC7 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 void* nand_get_set_features_notsupp ; 
 int FUNC9 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*,struct hinfc_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,struct device_node*) ; 
 struct mtd_info* FUNC12 (struct nand_chip*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct hinfc_host*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret = 0, irq, max_chips = HINFC504_MAX_CHIP;
	struct device *dev = &pdev->dev;
	struct hinfc_host *host;
	struct nand_chip  *chip;
	struct mtd_info   *mtd;
	struct resource	  *res;
	struct device_node *np = dev->of_node;

	host = FUNC4(dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;
	host->dev = dev;

	FUNC15(pdev, host);
	chip = &host->chip;
	mtd  = FUNC12(chip);

	irq = FUNC13(pdev, 0);
	if (irq < 0) {
		FUNC2(dev, "no IRQ resource defined\n");
		return -ENXIO;
	}

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	host->iobase = FUNC3(dev, res);
	if (FUNC0(host->iobase))
		return FUNC1(host->iobase);

	res = FUNC14(pdev, IORESOURCE_MEM, 1);
	host->mmio = FUNC3(dev, res);
	if (FUNC0(host->mmio)) {
		FUNC2(dev, "devm_ioremap_resource[1] fail\n");
		return FUNC1(host->mmio);
	}

	mtd->name		= "hisi_nand";
	mtd->dev.parent         = &pdev->dev;

	FUNC10(chip, host);
	FUNC11(chip, np);
	chip->legacy.cmdfunc	= hisi_nfc_cmdfunc;
	chip->legacy.select_chip	= hisi_nfc_select_chip;
	chip->legacy.read_byte	= hisi_nfc_read_byte;
	chip->legacy.write_buf	= hisi_nfc_write_buf;
	chip->legacy.read_buf	= hisi_nfc_read_buf;
	chip->legacy.chip_delay	= HINFC504_CHIP_DELAY;
	chip->legacy.set_features	= nand_get_set_features_notsupp;
	chip->legacy.get_features	= nand_get_set_features_notsupp;

	FUNC6(host);

	ret = FUNC5(dev, irq, hinfc_irq_handle, 0x0, "nandc", host);
	if (ret) {
		FUNC2(dev, "failed to request IRQ\n");
		return ret;
	}

	chip->legacy.dummy_controller.ops = &hisi_nfc_controller_ops;
	ret = FUNC9(chip, max_chips);
	if (ret)
		return ret;

	ret = FUNC7(mtd, NULL, 0);
	if (ret) {
		FUNC2(dev, "Err MTD partition=%d\n", ret);
		FUNC8(chip);
		return ret;
	}

	return 0;
}