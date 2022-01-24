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
struct TYPE_2__ {int /*<<< orphan*/ * ops; struct vsc73xx_spi* priv; struct device* dev; } ;
struct vsc73xx_spi {TYPE_1__ vsc; int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
struct device {int dummy; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  mode; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct vsc73xx_spi* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct vsc73xx_spi*) ; 
 int FUNC5 (struct spi_device*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  vsc73xx_spi_ops ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct vsc73xx_spi *vsc_spi;
	int ret;

	vsc_spi = FUNC1(dev, sizeof(*vsc_spi), GFP_KERNEL);
	if (!vsc_spi)
		return -ENOMEM;

	FUNC4(spi, vsc_spi);
	vsc_spi->spi = FUNC3(spi);
	vsc_spi->vsc.dev = dev;
	vsc_spi->vsc.priv = vsc_spi;
	vsc_spi->vsc.ops = &vsc73xx_spi_ops;
	FUNC2(&vsc_spi->lock);

	spi->mode = SPI_MODE_0;
	spi->bits_per_word = 8;
	ret = FUNC5(spi);
	if (ret < 0) {
		FUNC0(dev, "spi setup failed.\n");
		return ret;
	}

	return FUNC6(&vsc_spi->vsc);
}