#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_2__ dev; } ;
struct ieee802154_hw {TYPE_1__* phy; TYPE_2__* parent; struct ca8210_priv* priv; } ;
struct ca8210_priv {int async_tx_pending; int hw_registered; int promiscuous; struct spi_device* spi; int /*<<< orphan*/  sync_exchange_complete; int /*<<< orphan*/  spi_transfer_complete; int /*<<< orphan*/  ca8210_is_awake; scalar_t__ retries; scalar_t__ sync_down; scalar_t__ sync_up; int /*<<< orphan*/  lock; struct ieee802154_hw* hw; } ;
struct ca8210_platform_data {scalar_t__ extclockenable; } ;
struct TYPE_4__ {int /*<<< orphan*/  perm_extended_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IEEE802154_CA8210_DEBUGFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ca8210_platform_data*,struct spi_device*,int) ; 
 int FUNC2 (struct ca8210_priv*) ; 
 int FUNC3 (struct spi_device*,struct ca8210_platform_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_hw*) ; 
 int FUNC5 (struct spi_device*) ; 
 int /*<<< orphan*/  ca8210_phy_ops ; 
 int FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*) ; 
 int FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,int) ; 
 int /*<<< orphan*/ * ca8210_test_int_driver_write ; 
 int /*<<< orphan*/  FUNC10 (struct ca8210_priv*) ; 
 int /*<<< orphan*/ * cascoda_api_upstream ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 struct ieee802154_hw* FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct ca8210_platform_data* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_device*,struct ca8210_priv*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct spi_device*) ; 

__attribute__((used)) static int FUNC23(struct spi_device *spi_device)
{
	struct ca8210_priv *priv;
	struct ieee802154_hw *hw;
	struct ca8210_platform_data *pdata;
	int ret;

	FUNC12(&spi_device->dev, "Inserting ca8210\n");

	/* allocate ieee802154_hw and private data */
	hw = FUNC13(sizeof(struct ca8210_priv), &ca8210_phy_ops);
	if (!hw) {
		FUNC11(&spi_device->dev, "ieee802154_alloc_hw failed\n");
		ret = -ENOMEM;
		goto error;
	}

	priv = hw->priv;
	priv->hw = hw;
	priv->spi = spi_device;
	hw->parent = &spi_device->dev;
	FUNC21(&priv->lock);
	priv->async_tx_pending = false;
	priv->hw_registered = false;
	priv->sync_up = 0;
	priv->sync_down = 0;
	priv->promiscuous = false;
	priv->retries = 0;
	FUNC16(&priv->ca8210_is_awake);
	FUNC16(&priv->spi_transfer_complete);
	FUNC16(&priv->sync_exchange_complete);
	FUNC20(priv->spi, priv);
	if (FUNC0(CONFIG_IEEE802154_CA8210_DEBUGFS)) {
		cascoda_api_upstream = ca8210_test_int_driver_write;
		FUNC10(priv);
	} else {
		cascoda_api_upstream = NULL;
	}
	FUNC4(hw);
	FUNC14(&hw->phy->perm_extended_addr);

	pdata = FUNC17(sizeof(*pdata), GFP_KERNEL);
	if (!pdata) {
		ret = -ENOMEM;
		goto error;
	}

	priv->spi->dev.platform_data = pdata;
	ret = FUNC3(priv->spi, pdata);
	if (ret) {
		FUNC11(&spi_device->dev, "ca8210_get_platform_data failed\n");
		goto error;
	}

	ret = FUNC2(priv);
	if (ret) {
		FUNC11(&spi_device->dev, "ca8210_dev_com_init failed\n");
		goto error;
	}
	ret = FUNC8(priv->spi);
	if (ret) {
		FUNC11(&spi_device->dev, "ca8210_reset_init failed\n");
		goto error;
	}

	ret = FUNC5(priv->spi);
	if (ret) {
		FUNC11(&spi_device->dev, "ca8210_interrupt_init failed\n");
		goto error;
	}

	FUNC19(100);

	FUNC9(priv->spi, 1);

	ret = FUNC22(priv->spi);
	if (ret) {
		FUNC11(&spi_device->dev, "tdme_chipinit failed\n");
		goto error;
	}

	if (pdata->extclockenable) {
		ret = FUNC1(pdata, priv->spi, 1);
		if (ret) {
			FUNC11(
				&spi_device->dev,
				"ca8210_config_extern_clk failed\n"
			);
			goto error;
		}
		ret = FUNC6(priv->spi);
		if (ret) {
			FUNC11(
				&spi_device->dev,
				"ca8210_register_ext_clock failed\n"
			);
			goto error;
		}
	}

	ret = FUNC15(hw);
	if (ret) {
		FUNC11(&spi_device->dev, "ieee802154_register_hw failed\n");
		goto error;
	}
	priv->hw_registered = true;

	return 0;
error:
	FUNC19(100); /* wait for pending spi transfers to complete */
	FUNC7(spi_device);
	return FUNC18(ret);
}