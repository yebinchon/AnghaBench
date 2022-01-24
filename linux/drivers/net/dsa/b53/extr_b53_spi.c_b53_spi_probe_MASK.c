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
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct b53_device {scalar_t__ pdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  b53_spi_ops ; 
 struct b53_device* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct spi_device*) ; 
 int FUNC1 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,struct b53_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct b53_device *dev;
	int ret;

	dev = FUNC0(&spi->dev, &b53_spi_ops, spi);
	if (!dev)
		return -ENOMEM;

	if (spi->dev.platform_data)
		dev->pdata = spi->dev.platform_data;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC2(spi, dev);

	return 0;
}