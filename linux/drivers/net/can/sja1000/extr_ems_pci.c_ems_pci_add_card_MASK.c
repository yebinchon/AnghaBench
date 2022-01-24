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
struct TYPE_3__ {int /*<<< orphan*/  freq; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;
struct sja1000_priv {int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  cdr; int /*<<< orphan*/  ocr; TYPE_2__ can; int /*<<< orphan*/  post_irq; int /*<<< orphan*/  write_reg; int /*<<< orphan*/  read_reg; int /*<<< orphan*/  irq_flags; struct ems_pci_card* priv; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct net_device {int dev_id; int /*<<< orphan*/  irq; } ;
struct ems_pci_card {int version; scalar_t__ channels; int /*<<< orphan*/ * conf_addr; int /*<<< orphan*/ * base_addr; struct net_device** net_dev; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int EMS_PCI_BASE_SIZE ; 
 int EMS_PCI_CAN_BASE_OFFSET ; 
 int /*<<< orphan*/  EMS_PCI_CAN_CLOCK ; 
 int EMS_PCI_CAN_CTRL_SIZE ; 
 int /*<<< orphan*/  EMS_PCI_CDR ; 
 int /*<<< orphan*/  EMS_PCI_OCR ; 
 int EMS_PCI_V1_BASE_BAR ; 
 int EMS_PCI_V1_CONF_SIZE ; 
 int EMS_PCI_V1_MAX_CHAN ; 
 int EMS_PCI_V2_BASE_BAR ; 
 int EMS_PCI_V2_CONF_SIZE ; 
 int EMS_PCI_V2_MAX_CHAN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ PCI_VENDOR_ID_PLX ; 
 int PITA2_ICR ; 
 int PITA2_ICR_INT0 ; 
 int PITA2_ICR_INT0_EN ; 
 int PITA2_MISC ; 
 int PITA2_MISC_CONFIG ; 
 int PLX_ICSR ; 
 int PLX_ICSR_ENA_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ems_pci_card*) ; 
 scalar_t__ FUNC5 (struct sja1000_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  ems_pci_v1_post_irq ; 
 int /*<<< orphan*/  ems_pci_v1_read_reg ; 
 int FUNC7 (struct ems_pci_card*,int) ; 
 int /*<<< orphan*/  ems_pci_v1_write_reg ; 
 int /*<<< orphan*/  ems_pci_v2_post_irq ; 
 int /*<<< orphan*/  ems_pci_v2_read_reg ; 
 int /*<<< orphan*/  ems_pci_v2_write_reg ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct ems_pci_card* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct sja1000_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 scalar_t__ FUNC12 (struct pci_dev*) ; 
 void* FUNC13 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct ems_pci_card*) ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	struct sja1000_priv *priv;
	struct net_device *dev;
	struct ems_pci_card *card;
	int max_chan, conf_size, base_bar;
	int err, i;

	/* Enabling PCI device */
	if (FUNC12(pdev) < 0) {
		FUNC2(&pdev->dev, "Enabling PCI device failed\n");
		return -ENODEV;
	}

	/* Allocating card structures to hold addresses, ... */
	card = FUNC9(sizeof(struct ems_pci_card), GFP_KERNEL);
	if (card == NULL) {
		FUNC11(pdev);
		return -ENOMEM;
	}

	FUNC14(pdev, card);

	card->pci_dev = pdev;

	card->channels = 0;

	if (pdev->vendor == PCI_VENDOR_ID_PLX) {
		card->version = 2; /* CPC-PCI v2 */
		max_chan = EMS_PCI_V2_MAX_CHAN;
		base_bar = EMS_PCI_V2_BASE_BAR;
		conf_size = EMS_PCI_V2_CONF_SIZE;
	} else {
		card->version = 1; /* CPC-PCI v1 */
		max_chan = EMS_PCI_V1_MAX_CHAN;
		base_bar = EMS_PCI_V1_BASE_BAR;
		conf_size = EMS_PCI_V1_CONF_SIZE;
	}

	/* Remap configuration space and controller memory area */
	card->conf_addr = FUNC13(pdev, 0, conf_size);
	if (card->conf_addr == NULL) {
		err = -ENOMEM;
		goto failure_cleanup;
	}

	card->base_addr = FUNC13(pdev, base_bar, EMS_PCI_BASE_SIZE);
	if (card->base_addr == NULL) {
		err = -ENOMEM;
		goto failure_cleanup;
	}

	if (card->version == 1) {
		/* Configure PITA-2 parallel interface (enable MUX) */
		FUNC16(PITA2_MISC_CONFIG, card->conf_addr + PITA2_MISC);

		/* Check for unique EMS CAN signature */
		if (FUNC7(card, 0) != 0x55 ||
		    FUNC7(card, 1) != 0xAA ||
		    FUNC7(card, 2) != 0x01 ||
		    FUNC7(card, 3) != 0xCB ||
		    FUNC7(card, 4) != 0x11) {
			FUNC2(&pdev->dev,
				"Not EMS Dr. Thomas Wuensche interface\n");
			err = -ENODEV;
			goto failure_cleanup;
		}
	}

	FUNC4(card);

	/* Detect available channels */
	for (i = 0; i < max_chan; i++) {
		dev = FUNC1(0);
		if (dev == NULL) {
			err = -ENOMEM;
			goto failure_cleanup;
		}

		card->net_dev[i] = dev;
		priv = FUNC10(dev);
		priv->priv = card;
		priv->irq_flags = IRQF_SHARED;

		dev->irq = pdev->irq;
		priv->reg_base = card->base_addr + EMS_PCI_CAN_BASE_OFFSET
					+ (i * EMS_PCI_CAN_CTRL_SIZE);
		if (card->version == 1) {
			priv->read_reg  = ems_pci_v1_read_reg;
			priv->write_reg = ems_pci_v1_write_reg;
			priv->post_irq  = ems_pci_v1_post_irq;
		} else {
			priv->read_reg  = ems_pci_v2_read_reg;
			priv->write_reg = ems_pci_v2_write_reg;
			priv->post_irq  = ems_pci_v2_post_irq;
		}

		/* Check if channel is present */
		if (FUNC5(priv)) {
			priv->can.clock.freq = EMS_PCI_CAN_CLOCK;
			priv->ocr = EMS_PCI_OCR;
			priv->cdr = EMS_PCI_CDR;

			FUNC0(dev, &pdev->dev);
			dev->dev_id = i;

			if (card->version == 1)
				/* reset int flag of pita */
				FUNC16(PITA2_ICR_INT0_EN | PITA2_ICR_INT0,
				       card->conf_addr + PITA2_ICR);
			else
				/* enable IRQ in PLX 9030 */
				FUNC16(PLX_ICSR_ENA_CLR,
				       card->conf_addr + PLX_ICSR);

			/* Register SJA1000 device */
			err = FUNC15(dev);
			if (err) {
				FUNC2(&pdev->dev, "Registering device failed "
							"(err=%d)\n", err);
				FUNC8(dev);
				goto failure_cleanup;
			}

			card->channels++;

			FUNC3(&pdev->dev, "Channel #%d at 0x%p, irq %d\n",
					i + 1, priv->reg_base, dev->irq);
		} else {
			FUNC8(dev);
		}
	}

	return 0;

failure_cleanup:
	FUNC2(&pdev->dev, "Error: %d. Cleaning Up.\n", err);

	FUNC6(pdev);

	return err;
}