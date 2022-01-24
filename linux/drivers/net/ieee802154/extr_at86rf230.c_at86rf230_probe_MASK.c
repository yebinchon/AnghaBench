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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ieee802154_hw {TYPE_1__* phy; int /*<<< orphan*/ * parent; struct at86rf230_local* priv; } ;
struct at86rf230_local {int slp_tr; struct ieee802154_hw* hw; int /*<<< orphan*/  state_complete; int /*<<< orphan*/  tx; int /*<<< orphan*/  state; int /*<<< orphan*/  regmap; struct spi_device* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  perm_extended_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RG_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct at86rf230_local*) ; 
 int FUNC5 (struct spi_device*,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct at86rf230_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at86rf230_isr ; 
 int /*<<< orphan*/  at86rf230_ops ; 
 int FUNC7 (struct at86rf230_local*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  at86rf230_regmap_spi_config ; 
 int /*<<< orphan*/  FUNC8 (struct at86rf230_local*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 struct ieee802154_hw* FUNC18 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct spi_device*,struct at86rf230_local*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 

__attribute__((used)) static int FUNC27(struct spi_device *spi)
{
	struct ieee802154_hw *hw;
	struct at86rf230_local *lp;
	unsigned int status;
	int rc, irq_type, rstn, slp_tr;
	u8 xtal_trim = 0;

	if (!spi->irq) {
		FUNC10(&spi->dev, "no IRQ specified\n");
		return -EINVAL;
	}

	rc = FUNC5(spi, &rstn, &slp_tr, &xtal_trim);
	if (rc < 0) {
		FUNC10(&spi->dev, "failed to parse platform_data: %d\n", rc);
		return rc;
	}

	if (FUNC16(rstn)) {
		rc = FUNC12(&spi->dev, rstn,
					   GPIOF_OUT_INIT_HIGH, "rstn");
		if (rc)
			return rc;
	}

	if (FUNC16(slp_tr)) {
		rc = FUNC12(&spi->dev, slp_tr,
					   GPIOF_OUT_INIT_LOW, "slp_tr");
		if (rc)
			return rc;
	}

	/* Reset */
	if (FUNC16(rstn)) {
		FUNC25(1);
		FUNC17(rstn, 0);
		FUNC25(1);
		FUNC17(rstn, 1);
		FUNC26(120, 240);
	}

	hw = FUNC18(sizeof(*lp), &at86rf230_ops);
	if (!hw)
		return -ENOMEM;

	lp = hw->priv;
	lp->hw = hw;
	lp->spi = spi;
	lp->slp_tr = slp_tr;
	hw->parent = &spi->dev;
	FUNC20(&hw->phy->perm_extended_addr);

	lp->regmap = FUNC13(spi, &at86rf230_regmap_spi_config);
	if (FUNC0(lp->regmap)) {
		rc = FUNC1(lp->regmap);
		FUNC10(&spi->dev, "Failed to allocate register map: %d\n",
			rc);
		goto free_dev;
	}

	FUNC8(lp, &lp->state);
	FUNC8(lp, &lp->tx);

	rc = FUNC4(lp);
	if (rc < 0)
		goto free_dev;

	FUNC22(&lp->state_complete);

	FUNC24(spi, lp);

	rc = FUNC6(lp, xtal_trim);
	if (rc)
		goto free_dev;

	/* Read irq status register to reset irq line */
	rc = FUNC7(lp, RG_IRQ_STATUS, 0xff, 0, &status);
	if (rc)
		goto free_dev;

	irq_type = FUNC23(spi->irq);
	if (!irq_type)
		irq_type = IRQF_TRIGGER_HIGH;

	rc = FUNC14(&spi->dev, spi->irq, at86rf230_isr,
			      IRQF_SHARED | irq_type, FUNC11(&spi->dev), lp);
	if (rc)
		goto free_dev;

	/* disable_irq by default and wait for starting hardware */
	FUNC15(spi->irq);

	/* going into sleep by default */
	FUNC9(lp);

	FUNC2(lp);

	rc = FUNC21(lp->hw);
	if (rc)
		goto free_debugfs;

	return rc;

free_debugfs:
	FUNC3();
free_dev:
	FUNC19(lp->hw);

	return rc;
}