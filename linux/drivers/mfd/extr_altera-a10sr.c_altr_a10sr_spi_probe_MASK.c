#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct altr_a10sr {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  altr_a10sr_regmap_config ; 
 int /*<<< orphan*/  altr_a10sr_subdev_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct altr_a10sr* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct altr_a10sr*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	int ret;
	struct altr_a10sr *a10sr;

	a10sr = FUNC4(&spi->dev, sizeof(*a10sr),
			     GFP_KERNEL);
	if (!a10sr)
		return -ENOMEM;

	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	FUNC8(spi);

	a10sr->dev = &spi->dev;

	FUNC7(spi, a10sr);

	a10sr->regmap = FUNC6(spi, &altr_a10sr_regmap_config);
	if (FUNC1(a10sr->regmap)) {
		ret = FUNC2(a10sr->regmap);
		FUNC3(&spi->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC5(a10sr->dev, PLATFORM_DEVID_AUTO,
				   altr_a10sr_subdev_info,
				   FUNC0(altr_a10sr_subdev_info),
				   NULL, 0, NULL);
	if (ret)
		FUNC3(a10sr->dev, "Failed to register sub-devices: %d\n",
			ret);

	return ret;
}