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
struct pcmcia_device {int config_flags; int irq; char** prod_id; struct pcan_pccard* priv; int /*<<< orphan*/  dev; TYPE_1__** resource; } ;
struct pcan_pccard {int /*<<< orphan*/  ioport_addr; int /*<<< orphan*/  led_timer; int /*<<< orphan*/  chan_count; void* fw_minor; void* fw_major; struct pcmcia_device* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCC_FW_MAJOR ; 
 int /*<<< orphan*/  PCC_FW_MINOR ; 
 int /*<<< orphan*/  PCC_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcan_pccard*) ; 
 struct pcan_pccard* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  pcan_conf_check ; 
 int /*<<< orphan*/  FUNC7 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  pcan_isr ; 
 int /*<<< orphan*/  pcan_led_timer ; 
 void* FUNC8 (struct pcan_pccard*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pcan_pccard*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pcmcia_device*) ; 
 int FUNC11 (struct pcmcia_device*) ; 
 int FUNC12 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct pcmcia_device *pdev)
{
	struct pcan_pccard *card;
	int err;

	pdev->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

	err = FUNC12(pdev, pcan_conf_check, NULL);
	if (err) {
		FUNC0(&pdev->dev, "pcmcia_loop_config() error %d\n", err);
		goto probe_err_1;
	}

	if (!pdev->irq) {
		FUNC0(&pdev->dev, "no irq assigned\n");
		err = -ENODEV;
		goto probe_err_1;
	}

	err = FUNC11(pdev);
	if (err) {
		FUNC0(&pdev->dev, "pcmcia_enable_device failed err=%d\n",
			err);
		goto probe_err_1;
	}

	card = FUNC5(sizeof(struct pcan_pccard), GFP_KERNEL);
	if (!card) {
		err = -ENOMEM;
		goto probe_err_2;
	}

	card->pdev = pdev;
	pdev->priv = card;

	/* sja1000 api uses iomem */
	card->ioport_addr = FUNC2(pdev->resource[0]->start,
					FUNC14(pdev->resource[0]));
	if (!card->ioport_addr) {
		FUNC0(&pdev->dev, "couldn't map io port into io memory\n");
		err = -ENOMEM;
		goto probe_err_3;
	}
	card->fw_major = FUNC8(card, PCC_FW_MAJOR);
	card->fw_minor = FUNC8(card, PCC_FW_MINOR);

	/* display board name and firware version */
	FUNC1(&pdev->dev, "PEAK-System pcmcia card %s fw %d.%d\n",
		pdev->prod_id[1] ? pdev->prod_id[1] : "PCAN-PC Card",
		card->fw_major, card->fw_minor);

	/* detect available channels */
	FUNC6(card);
	if (!card->chan_count) {
		err = -ENOMEM;
		goto probe_err_4;
	}

	/* init the timer which controls the leds */
	FUNC15(&card->led_timer, pcan_led_timer, 0);

	/* request the given irq */
	err = FUNC13(pdev->irq, &pcan_isr, IRQF_SHARED, PCC_NAME, card);
	if (err) {
		FUNC0(&pdev->dev, "couldn't request irq%d\n", pdev->irq);
		goto probe_err_5;
	}

	/* power on the connectors */
	FUNC9(card, 1);

	return 0;

probe_err_5:
	/* unregister can devices from network */
	FUNC7(card);

probe_err_4:
	FUNC3(card->ioport_addr);

probe_err_3:
	FUNC4(card);
	pdev->priv = NULL;

probe_err_2:
	FUNC10(pdev);

probe_err_1:
	return err;
}