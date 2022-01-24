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
struct spi_device {scalar_t__ max_speed_hz; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct mrf24j40 {struct ieee802154_hw* hw; int /*<<< orphan*/  regmap_long; int /*<<< orphan*/  regmap_short; struct spi_device* spi; } ;
struct ieee802154_hw {int flags; TYPE_2__* phy; int /*<<< orphan*/ * parent; struct mrf24j40* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/ * channels; } ;
struct TYPE_4__ {int flags; TYPE_1__ supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IEEE802154_HW_AFILT ; 
 int IEEE802154_HW_CSMA_PARAMS ; 
 int IEEE802154_HW_PROMISCUOUS ; 
 int IEEE802154_HW_TX_OMIT_CKSUM ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_SPI_SPEED_HZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ; 
 int WPAN_PHY_FLAG_CCA_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mrf24j40*) ; 
 struct ieee802154_hw* FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee802154_hw*) ; 
 int FUNC12 (struct ieee802154_hw*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mrf24j40*) ; 
 int /*<<< orphan*/  mrf24j40_isr ; 
 int /*<<< orphan*/  mrf24j40_long_regmap ; 
 int /*<<< orphan*/  mrf24j40_long_regmap_bus ; 
 int /*<<< orphan*/  mrf24j40_ops ; 
 int /*<<< orphan*/  FUNC15 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC16 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC17 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC18 (struct mrf24j40*) ; 
 int /*<<< orphan*/  mrf24j40_short_regmap ; 
 int /*<<< orphan*/  FUNC19 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_device*,struct mrf24j40*) ; 

__attribute__((used)) static int FUNC21(struct spi_device *spi)
{
	int ret = -ENOMEM, irq_type;
	struct ieee802154_hw *hw;
	struct mrf24j40 *devrec;

	FUNC4(&spi->dev, "probe(). IRQ: %d\n", spi->irq);

	/* Register with the 802154 subsystem */

	hw = FUNC10(sizeof(*devrec), &mrf24j40_ops);
	if (!hw)
		goto err_ret;

	devrec = hw->priv;
	devrec->spi = spi;
	FUNC20(spi, devrec);
	devrec->hw = hw;
	devrec->hw->parent = &spi->dev;
	devrec->hw->phy->supported.channels[0] = CHANNEL_MASK;
	devrec->hw->flags = IEEE802154_HW_TX_OMIT_CKSUM | IEEE802154_HW_AFILT |
			    IEEE802154_HW_CSMA_PARAMS |
			    IEEE802154_HW_PROMISCUOUS;

	devrec->hw->phy->flags = WPAN_PHY_FLAG_CCA_MODE |
				 WPAN_PHY_FLAG_CCA_ED_LEVEL;

	FUNC18(devrec);
	FUNC17(devrec);
	FUNC16(devrec);

	devrec->regmap_short = FUNC8(spi,
						    &mrf24j40_short_regmap);
	if (FUNC0(devrec->regmap_short)) {
		ret = FUNC1(devrec->regmap_short);
		FUNC3(spi->dev, "Failed to allocate short register map: %d\n",
			ret);
		goto err_register_device;
	}

	devrec->regmap_long = FUNC7(&spi->dev,
					       &mrf24j40_long_regmap_bus,
					       spi, &mrf24j40_long_regmap);
	if (FUNC0(devrec->regmap_long)) {
		ret = FUNC1(devrec->regmap_long);
		FUNC3(spi->dev, "Failed to allocate long register map: %d\n",
			ret);
		goto err_register_device;
	}

	if (spi->max_speed_hz > MAX_SPI_SPEED_HZ) {
		FUNC6(&spi->dev, "spi clock above possible maximum: %d",
			 MAX_SPI_SPEED_HZ);
		ret = -EINVAL;
		goto err_register_device;
	}

	ret = FUNC14(devrec);
	if (ret)
		goto err_register_device;

	FUNC15(devrec);

	/* request IRQF_TRIGGER_LOW as fallback default */
	irq_type = FUNC13(spi->irq);
	if (!irq_type)
		irq_type = IRQF_TRIGGER_LOW;

	ret = FUNC9(&spi->dev, spi->irq, mrf24j40_isr,
			       irq_type, FUNC5(&spi->dev), devrec);
	if (ret) {
		FUNC3(FUNC19(devrec), "Unable to get IRQ");
		goto err_register_device;
	}

	FUNC2(FUNC19(devrec), "registered mrf24j40\n");
	ret = FUNC12(devrec->hw);
	if (ret)
		goto err_register_device;

	return 0;

err_register_device:
	FUNC11(devrec->hw);
err_ret:
	return ret;
}