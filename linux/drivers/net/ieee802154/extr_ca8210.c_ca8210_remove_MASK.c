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
struct TYPE_2__ {int /*<<< orphan*/  driver_data; struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int /*<<< orphan*/ * hw; scalar_t__ hw_registered; int /*<<< orphan*/  sync_up; int /*<<< orphan*/  sync_down; } ;
struct ca8210_platform_data {int /*<<< orphan*/  irq_id; scalar_t__ extclockenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IEEE802154_CA8210_DEBUGFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ca8210_platform_data*,struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ca8210_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ca8210_platform_data*) ; 
 struct ca8210_priv* FUNC10 (struct spi_device*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi_device)
{
	struct ca8210_priv *priv;
	struct ca8210_platform_data *pdata;

	FUNC5(&spi_device->dev, "Removing ca8210\n");

	pdata = spi_device->dev.platform_data;
	if (pdata) {
		if (pdata->extclockenable) {
			FUNC4(spi_device);
			FUNC1(pdata, spi_device, 0);
		}
		FUNC6(pdata->irq_id, spi_device->dev.driver_data);
		FUNC9(pdata);
		spi_device->dev.platform_data = NULL;
	}
	/* get spi_device private data */
	priv = FUNC10(spi_device);
	if (priv) {
		FUNC5(
			&spi_device->dev,
			"sync_down = %d, sync_up = %d\n",
			priv->sync_down,
			priv->sync_up
		);
		FUNC2(spi_device->dev.driver_data);
		if (priv->hw) {
			if (priv->hw_registered)
				FUNC8(priv->hw);
			FUNC7(priv->hw);
			priv->hw = NULL;
			FUNC5(
				&spi_device->dev,
				"Unregistered & freed ieee802154_hw.\n"
			);
		}
		if (FUNC0(CONFIG_IEEE802154_CA8210_DEBUGFS))
			FUNC3(priv);
	}

	return 0;
}