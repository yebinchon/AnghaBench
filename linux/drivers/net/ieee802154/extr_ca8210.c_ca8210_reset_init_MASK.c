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
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_platform_data {int /*<<< orphan*/  gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	int ret;
	struct ca8210_platform_data *pdata = spi->dev.platform_data;

	pdata->gpio_reset = FUNC2(
		spi->dev.of_node,
		"reset-gpio",
		0
	);

	ret = FUNC1(pdata->gpio_reset, 1);
	if (ret < 0) {
		FUNC0(
			&spi->dev,
			"Reset GPIO %d did not set to output mode\n",
			pdata->gpio_reset
		);
	}

	return ret;
}