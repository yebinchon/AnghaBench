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
struct TYPE_4__ {int strength; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  correct; int /*<<< orphan*/  calculate; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  bytes; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  waitfunc; int /*<<< orphan*/  cmd_ctrl; } ;
struct r852_device {int /*<<< orphan*/  phys_bounce_buffer; int /*<<< orphan*/  bounce_buffer; int /*<<< orphan*/  mmio; struct r852_device* tmp_buffer; int /*<<< orphan*/  card_workqueue; int /*<<< orphan*/  card_detect_work; scalar_t__ card_detected; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irq; int /*<<< orphan*/  dma_done; struct pci_dev* pci_dev; struct r852_device* chip; TYPE_2__ ecc; TYPE_1__ legacy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct nand_chip {int /*<<< orphan*/  phys_bounce_buffer; int /*<<< orphan*/  bounce_buffer; int /*<<< orphan*/  mmio; struct nand_chip* tmp_buffer; int /*<<< orphan*/  card_workqueue; int /*<<< orphan*/  card_detect_work; scalar_t__ card_detected; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irq; int /*<<< orphan*/  dma_done; struct pci_dev* pci_dev; struct nand_chip* chip; TYPE_2__ ecc; TYPE_1__ legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  NAND_ECC_HW_SYNDROME ; 
 int /*<<< orphan*/  R852_DMA_LEN ; 
 int /*<<< orphan*/  SM_OOB_SIZE ; 
 int SM_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct r852_device*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct r852_device*,struct r852_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct r852_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r852_card_detect_work ; 
 int /*<<< orphan*/  FUNC21 (struct r852_device*) ; 
 int /*<<< orphan*/  r852_cmdctl ; 
 int /*<<< orphan*/  FUNC22 (struct r852_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct r852_device*) ; 
 int /*<<< orphan*/  r852_ecc_calculate ; 
 int /*<<< orphan*/  r852_ecc_correct ; 
 int /*<<< orphan*/  r852_ecc_hwctl ; 
 int /*<<< orphan*/  FUNC24 (struct r852_device*) ; 
 int /*<<< orphan*/  r852_irq ; 
 int /*<<< orphan*/  r852_read_buf ; 
 int /*<<< orphan*/  r852_read_byte ; 
 int /*<<< orphan*/  r852_read_oob ; 
 int /*<<< orphan*/  r852_ready ; 
 int /*<<< orphan*/  r852_wait ; 
 int /*<<< orphan*/  r852_write_buf ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct r852_device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC27(struct pci_dev *pci_dev, const struct pci_device_id *id)
{
	int error;
	struct nand_chip *chip;
	struct r852_device *dev;

	/* pci initialization */
	error = FUNC12(pci_dev);

	if (error)
		goto error1;

	FUNC18(pci_dev);

	error = FUNC6(&pci_dev->dev, FUNC0(32));
	if (error)
		goto error2;

	error = FUNC16(pci_dev, DRV_NAME);

	if (error)
		goto error3;

	error = -ENOMEM;

	/* init nand chip, but register it only on card insert */
	chip = FUNC9(sizeof(struct nand_chip), GFP_KERNEL);

	if (!chip)
		goto error4;

	/* commands */
	chip->legacy.cmd_ctrl = r852_cmdctl;
	chip->legacy.waitfunc = r852_wait;
	chip->legacy.dev_ready = r852_ready;

	/* I/O */
	chip->legacy.read_byte = r852_read_byte;
	chip->legacy.read_buf = r852_read_buf;
	chip->legacy.write_buf = r852_write_buf;

	/* ecc */
	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
	chip->ecc.size = R852_DMA_LEN;
	chip->ecc.bytes = SM_OOB_SIZE;
	chip->ecc.strength = 2;
	chip->ecc.hwctl = r852_ecc_hwctl;
	chip->ecc.calculate = r852_ecc_calculate;
	chip->ecc.correct = r852_ecc_correct;

	/* TODO: hack */
	chip->ecc.read_oob = r852_read_oob;

	/* init our device structure */
	dev = FUNC9(sizeof(struct r852_device), GFP_KERNEL);

	if (!dev)
		goto error5;

	FUNC10(chip, dev);
	dev->chip = chip;
	dev->pci_dev = pci_dev;
	FUNC17(pci_dev, dev);

	dev->bounce_buffer = FUNC4(&pci_dev->dev, R852_DMA_LEN,
		&dev->phys_bounce_buffer, GFP_KERNEL);

	if (!dev->bounce_buffer)
		goto error6;


	error = -ENODEV;
	dev->mmio = FUNC13(pci_dev, 0);

	if (!dev->mmio)
		goto error7;

	error = -ENOMEM;
	dev->tmp_buffer = FUNC9(SM_SECTOR_SIZE, GFP_KERNEL);

	if (!dev->tmp_buffer)
		goto error8;

	FUNC7(&dev->dma_done);

	dev->card_workqueue = FUNC2(DRV_NAME);

	if (!dev->card_workqueue)
		goto error9;

	FUNC1(&dev->card_detect_work, r852_card_detect_work);

	/* shutdown everything - precation */
	FUNC24(dev);
	FUNC22(dev);

	FUNC23(dev);

	dev->irq = pci_dev->irq;
	FUNC26(&dev->irqlock);

	dev->card_detected = 0;
	FUNC21(dev);

	/*register irq handler*/
	error = -ENODEV;
	if (FUNC25(pci_dev->irq, &r852_irq, IRQF_SHARED,
			  DRV_NAME, dev))
		goto error10;

	/* kick initial present test */
	FUNC20(dev->card_workqueue,
		&dev->card_detect_work, 0);


	FUNC19("driver loaded successfully\n");
	return 0;

error10:
	FUNC3(dev->card_workqueue);
error9:
	FUNC8(dev->tmp_buffer);
error8:
	FUNC14(pci_dev, dev->mmio);
error7:
	FUNC5(&pci_dev->dev, R852_DMA_LEN, dev->bounce_buffer,
			  dev->phys_bounce_buffer);
error6:
	FUNC8(dev);
error5:
	FUNC8(chip);
error4:
	FUNC15(pci_dev);
error3:
error2:
	FUNC11(pci_dev);
error1:
	return error;
}