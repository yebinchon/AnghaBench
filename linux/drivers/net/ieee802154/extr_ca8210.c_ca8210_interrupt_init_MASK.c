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
struct ca8210_platform_data {int gpio_irq; scalar_t__ irq_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  ca8210_interrupt_handler ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	int ret;
	struct ca8210_platform_data *pdata = spi->dev.platform_data;

	pdata->gpio_irq = FUNC4(
		spi->dev.of_node,
		"irq-gpio",
		0
	);

	pdata->irq_id = FUNC2(pdata->gpio_irq);
	if (pdata->irq_id < 0) {
		FUNC0(
			&spi->dev,
			"Could not get irq for gpio pin %d\n",
			pdata->gpio_irq
		);
		FUNC1(pdata->gpio_irq);
		return pdata->irq_id;
	}

	ret = FUNC5(
		pdata->irq_id,
		ca8210_interrupt_handler,
		IRQF_TRIGGER_FALLING,
		"ca8210-irq",
		FUNC6(spi)
	);
	if (ret) {
		FUNC0(&spi->dev, "request_irq %d failed\n", pdata->irq_id);
		FUNC3(pdata->gpio_irq);
		FUNC1(pdata->gpio_irq);
	}

	return ret;
}