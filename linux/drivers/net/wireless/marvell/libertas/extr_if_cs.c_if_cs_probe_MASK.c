#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int config_flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  card_id; int /*<<< orphan*/  manf_id; TYPE_1__** resource; int /*<<< orphan*/  irq; struct if_cs_card* priv; } ;
struct lbs_private {int /*<<< orphan*/ * reset_deep_sleep_wakeup; int /*<<< orphan*/ * exit_deep_sleep; int /*<<< orphan*/ * enter_deep_sleep; int /*<<< orphan*/  hw_host_to_card; struct if_cs_card* card; } ;
struct if_cs_card {int align_regs; scalar_t__ model; int /*<<< orphan*/  iobase; struct lbs_private* priv; struct pcmcia_device* p_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IF_CS_CF8305_B1_REV ; 
 unsigned int IF_CS_CF8381_B3_REV ; 
 unsigned int IF_CS_CF8385_B1_REV ; 
 int /*<<< orphan*/  IF_CS_PRODUCT_ID ; 
 scalar_t__ FUNC0 (struct lbs_private*) ; 
 scalar_t__ MODEL_8305 ; 
 scalar_t__ MODEL_8381 ; 
 scalar_t__ MODEL_8385 ; 
 scalar_t__ MODEL_UNKNOWN ; 
 int FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  fw_table ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_cs_host_to_card ; 
 int /*<<< orphan*/  if_cs_ioprobe ; 
 int /*<<< orphan*/  if_cs_prog_firmware ; 
 unsigned int FUNC3 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct if_cs_card* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC7 (struct if_cs_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (struct lbs_private*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct pcmcia_device*) ; 
 int FUNC12 (struct pcmcia_device*) ; 
 scalar_t__ FUNC13 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16(struct pcmcia_device *p_dev)
{
	int ret = -ENOMEM;
	unsigned int prod_id;
	struct lbs_private *priv;
	struct if_cs_card *card;

	card = FUNC6(sizeof(struct if_cs_card), GFP_KERNEL);
	if (!card)
		goto out;

	card->p_dev = p_dev;
	p_dev->priv = card;

	p_dev->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

	if (FUNC13(p_dev, if_cs_ioprobe, NULL)) {
		FUNC14("error in pcmcia_loop_config\n");
		goto out1;
	}

	/*
	 * Allocate an interrupt line.  Note that this does not assign
	 * a handler to the interrupt, unless the 'Handler' member of
	 * the irq structure is initialized.
	 */
	if (!p_dev->irq)
		goto out1;

	/* Initialize io access */
	card->iobase = FUNC4(p_dev->resource[0]->start,
				FUNC15(p_dev->resource[0]));
	if (!card->iobase) {
		FUNC14("error in ioport_map\n");
		ret = -EIO;
		goto out1;
	}

	ret = FUNC12(p_dev);
	if (ret) {
		FUNC14("error in pcmcia_enable_device\n");
		goto out2;
	}

	/* Finally, report what we've done */
	FUNC8("irq %d, io %pR", p_dev->irq, p_dev->resource[0]);

	/*
	 * Most of the libertas cards can do unaligned register access, but some
	 * weird ones cannot. That's especially true for the CF8305 card.
	 */
	card->align_regs = false;

	card->model = FUNC2(p_dev->manf_id, p_dev->card_id);
	if (card->model == MODEL_UNKNOWN) {
		FUNC14("unsupported manf_id 0x%04x / card_id 0x%04x\n",
		       p_dev->manf_id, p_dev->card_id);
		ret = -ENODEV;
		goto out2;
	}

	/* Check if we have a current silicon */
	prod_id = FUNC3(card, IF_CS_PRODUCT_ID);
	if (card->model == MODEL_8305) {
		card->align_regs = true;
		if (prod_id < IF_CS_CF8305_B1_REV) {
			FUNC14("8305 rev B0 and older are not supported\n");
			ret = -ENODEV;
			goto out2;
		}
	}

	if ((card->model == MODEL_8381) && prod_id < IF_CS_CF8381_B3_REV) {
		FUNC14("8381 rev B2 and older are not supported\n");
		ret = -ENODEV;
		goto out2;
	}

	if ((card->model == MODEL_8385) && prod_id < IF_CS_CF8385_B1_REV) {
		FUNC14("8385 rev B0 and older are not supported\n");
		ret = -ENODEV;
		goto out2;
	}

	/* Make this card known to the libertas driver */
	priv = FUNC7(card, &p_dev->dev);
	if (FUNC0(priv)) {
		ret = FUNC1(priv);
		goto out2;
	}

	/* Set up fields in lbs_private */
	card->priv = priv;
	priv->card = card;
	priv->hw_host_to_card = if_cs_host_to_card;
	priv->enter_deep_sleep = NULL;
	priv->exit_deep_sleep = NULL;
	priv->reset_deep_sleep_wakeup = NULL;

	/* Get firmware */
	ret = FUNC9(priv, &p_dev->dev, card->model, fw_table,
				     if_cs_prog_firmware);
	if (ret) {
		FUNC14("failed to find firmware (%d)\n", ret);
		goto out3;
	}

	goto out;

out3:
	FUNC10(priv);
out2:
	FUNC5(card->iobase);
out1:
	FUNC11(p_dev);
out:
	return ret;
}