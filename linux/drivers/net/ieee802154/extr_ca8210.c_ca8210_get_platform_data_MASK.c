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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_platform_data {int /*<<< orphan*/  extclockgpio; int /*<<< orphan*/  extclockfreq; scalar_t__ extclockenable; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
	struct spi_device *spi_device,
	struct ca8210_platform_data *pdata
)
{
	int ret = 0;

	if (!spi_device->dev.of_node)
		return -EINVAL;

	pdata->extclockenable = FUNC0(
		spi_device->dev.of_node,
		"extclock-enable"
	);
	if (pdata->extclockenable) {
		ret = FUNC1(
			spi_device->dev.of_node,
			"extclock-freq",
			&pdata->extclockfreq
		);
		if (ret < 0)
			return ret;

		ret = FUNC1(
			spi_device->dev.of_node,
			"extclock-gpio",
			&pdata->extclockgpio
		);
	}

	return ret;
}