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
struct spi_device {int bits_per_word; int mode; int /*<<< orphan*/  dev; } ;
struct of_device_id {int dummy; } ;
struct cpcap_ddata {struct spi_device* spi; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * regmap_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_CS_HIGH ; 
 int SPI_MODE_0 ; 
 int FUNC3 (struct cpcap_ddata*) ; 
 int FUNC4 (struct cpcap_ddata*) ; 
 int /*<<< orphan*/  cpcap_mfd_devices ; 
 int /*<<< orphan*/  cpcap_of_match ; 
 int /*<<< orphan*/  cpcap_regmap_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct cpcap_ddata* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct cpcap_ddata*) ; 
 int FUNC12 (struct spi_device*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	const struct of_device_id *match;
	struct cpcap_ddata *cpcap;
	int ret;

	match = FUNC9(FUNC10(cpcap_of_match), &spi->dev);
	if (!match)
		return -ENODEV;

	cpcap = FUNC6(&spi->dev, sizeof(*cpcap), GFP_KERNEL);
	if (!cpcap)
		return -ENOMEM;

	cpcap->spi = spi;
	FUNC11(spi, cpcap);

	spi->bits_per_word = 16;
	spi->mode = SPI_MODE_0 | SPI_CS_HIGH;

	ret = FUNC12(spi);
	if (ret)
		return ret;

	cpcap->regmap_conf = &cpcap_regmap_config;
	cpcap->regmap = FUNC8(spi, &cpcap_regmap_config);
	if (FUNC1(cpcap->regmap)) {
		ret = FUNC2(cpcap->regmap);
		FUNC5(&cpcap->spi->dev, "Failed to initialize regmap: %d\n",
			ret);

		return ret;
	}

	ret = FUNC3(cpcap);
	if (ret) {
		FUNC5(&cpcap->spi->dev, "Failed to detect CPCAP: %i\n", ret);
		return ret;
	}

	ret = FUNC4(cpcap);
	if (ret)
		return ret;

	return FUNC7(&spi->dev, 0, cpcap_mfd_devices,
				    FUNC0(cpcap_mfd_devices), NULL, 0, NULL);
}