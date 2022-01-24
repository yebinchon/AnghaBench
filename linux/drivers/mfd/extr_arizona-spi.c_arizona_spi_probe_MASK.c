#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {unsigned long driver_data; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct spi_device {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct regmap_config {int dummy; } ;
struct arizona {unsigned long type; int /*<<< orphan*/  irq; TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MFD_CS47L24 ; 
 int /*<<< orphan*/  CONFIG_MFD_WM5102 ; 
 int /*<<< orphan*/  CONFIG_MFD_WM5110 ; 
#define  CS47L24 132 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  WM1831 131 
#define  WM5102 130 
#define  WM5110 129 
#define  WM8280 128 
 int FUNC3 (struct arizona*) ; 
 unsigned long FUNC4 (TYPE_1__*) ; 
 struct regmap_config cs47l24_spi_regmap ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 struct arizona* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct regmap_config const*) ; 
 struct spi_device_id* FUNC8 (struct spi_device*) ; 
 struct regmap_config wm5102_spi_regmap ; 
 struct regmap_config wm5110_spi_regmap ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC8(spi);
	struct arizona *arizona;
	const struct regmap_config *regmap_config = NULL;
	unsigned long type;
	int ret;

	if (spi->dev.of_node)
		type = FUNC4(&spi->dev);
	else
		type = id->driver_data;

	switch (type) {
	case WM5102:
		if (FUNC0(CONFIG_MFD_WM5102))
			regmap_config = &wm5102_spi_regmap;
		break;
	case WM5110:
	case WM8280:
		if (FUNC0(CONFIG_MFD_WM5110))
			regmap_config = &wm5110_spi_regmap;
		break;
	case WM1831:
	case CS47L24:
		if (FUNC0(CONFIG_MFD_CS47L24))
			regmap_config = &cs47l24_spi_regmap;
		break;
	default:
		FUNC5(&spi->dev, "Unknown device type %ld\n", type);
		return -EINVAL;
	}

	if (!regmap_config) {
		FUNC5(&spi->dev,
			"No kernel support for device type %ld\n", type);
		return -EINVAL;
	}

	arizona = FUNC6(&spi->dev, sizeof(*arizona), GFP_KERNEL);
	if (arizona == NULL)
		return -ENOMEM;

	arizona->regmap = FUNC7(spi, regmap_config);
	if (FUNC1(arizona->regmap)) {
		ret = FUNC2(arizona->regmap);
		FUNC5(&spi->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	arizona->type = type;
	arizona->dev = &spi->dev;
	arizona->irq = spi->irq;

	return FUNC3(arizona);
}