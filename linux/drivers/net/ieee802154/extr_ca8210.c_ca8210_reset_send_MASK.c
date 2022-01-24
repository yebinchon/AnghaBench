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
struct TYPE_3__ {struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int promiscuous; int /*<<< orphan*/  ca8210_is_awake; } ;
struct ca8210_platform_data {int /*<<< orphan*/  gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA8210_SYNC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ca8210_priv* FUNC6 (struct spi_device*) ; 
 long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct spi_device *spi, unsigned int ms)
{
	struct ca8210_platform_data *pdata = spi->dev.platform_data;
	struct ca8210_priv *priv = FUNC6(spi);
	long status;

	FUNC2(pdata->gpio_reset, 0);
	FUNC5(&priv->ca8210_is_awake);
	FUNC4(ms);
	FUNC2(pdata->gpio_reset, 1);
	priv->promiscuous = false;

	/* Wait until wakeup indication seen */
	status = FUNC7(
		&priv->ca8210_is_awake,
		FUNC3(CA8210_SYNC_TIMEOUT)
	);
	if (status == 0) {
		FUNC0(
			&spi->dev,
			"Fatal: No wakeup from ca8210 after reset!\n"
		);
	}

	FUNC1(&spi->dev, "Reset the device\n");
}