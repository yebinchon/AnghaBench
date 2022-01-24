#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {scalar_t__ driver_data; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct spi_device {int mode; int max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct of_device_id {void* data; } ;
struct mc13xxx {void* variant; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_CS_HIGH ; 
 int SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct mc13xxx*) ; 
 struct mc13xxx* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  mc13xxx_dt_ids ; 
 int /*<<< orphan*/  mc13xxx_regmap_spi_config ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  regmap_mc13xxx_bus ; 
 struct spi_device_id* FUNC8 (struct spi_device*) ; 
 int FUNC9 (struct spi_device*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct mc13xxx *mc13xxx;
	int ret;

	mc13xxx = FUNC4(&spi->dev, sizeof(*mc13xxx), GFP_KERNEL);
	if (!mc13xxx)
		return -ENOMEM;

	FUNC3(&spi->dev, mc13xxx);

	spi->mode = SPI_MODE_0 | SPI_CS_HIGH;

	mc13xxx->irq = spi->irq;

	spi->max_speed_hz = spi->max_speed_hz ? : 26000000;
	ret = FUNC9(spi);
	if (ret)
		return ret;

	mc13xxx->regmap = FUNC5(&spi->dev, &regmap_mc13xxx_bus,
					   &spi->dev,
					   &mc13xxx_regmap_spi_config);
	if (FUNC0(mc13xxx->regmap)) {
		ret = FUNC1(mc13xxx->regmap);
		FUNC2(&spi->dev, "Failed to initialize regmap: %d\n", ret);
		return ret;
	}

	if (spi->dev.of_node) {
		const struct of_device_id *of_id =
			FUNC7(mc13xxx_dt_ids, &spi->dev);

		mc13xxx->variant = of_id->data;
	} else {
		const struct spi_device_id *id_entry = FUNC8(spi);

		mc13xxx->variant = (void *)id_entry->driver_data;
	}

	return FUNC6(&spi->dev);
}