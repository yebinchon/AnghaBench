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
struct secocec_data {int irq; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gpio_desc*) ; 

__attribute__((used)) static int FUNC6(struct secocec_data *sdev)
{
	struct device *dev = sdev->dev;
	struct gpio_desc *gpio;
	int irq = 0;

	gpio = FUNC4(dev, NULL, GPIOF_IN);
	if (FUNC0(gpio)) {
		FUNC3(dev, "Cannot request interrupt gpio");
		return FUNC1(gpio);
	}

	irq = FUNC5(gpio);
	if (irq < 0) {
		FUNC3(dev, "Cannot find valid irq");
		return -ENODEV;
	}
	FUNC2(dev, "irq-gpio is bound to IRQ %d", irq);

	sdev->irq = irq;

	return 0;
}