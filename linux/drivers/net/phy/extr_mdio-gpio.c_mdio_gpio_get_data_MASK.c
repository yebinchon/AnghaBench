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
struct mdio_gpio_info {int /*<<< orphan*/  mdo; void* mdio; void* mdc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MDIO_GPIO_MDC ; 
 int /*<<< orphan*/  MDIO_GPIO_MDIO ; 
 int /*<<< orphan*/  MDIO_GPIO_MDO ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			      struct mdio_gpio_info *bitbang)
{
	bitbang->mdc = FUNC3(dev, NULL, MDIO_GPIO_MDC,
					    GPIOD_OUT_LOW);
	if (FUNC0(bitbang->mdc))
		return FUNC1(bitbang->mdc);

	bitbang->mdio = FUNC3(dev, NULL, MDIO_GPIO_MDIO,
					     GPIOD_IN);
	if (FUNC0(bitbang->mdio))
		return FUNC1(bitbang->mdio);

	bitbang->mdo = FUNC4(dev, NULL, MDIO_GPIO_MDO,
						     GPIOD_OUT_LOW);
	return FUNC2(bitbang->mdo);
}