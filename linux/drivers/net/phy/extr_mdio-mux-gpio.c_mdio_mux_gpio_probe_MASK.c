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
struct TYPE_4__ {struct mdio_mux_gpio_state* platform_data; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mdio_mux_gpio_state {struct gpio_descs* gpios; int /*<<< orphan*/  mux_handle; } ;
struct gpio_descs {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_descs*) ; 
 int FUNC1 (struct gpio_descs*) ; 
 struct mdio_mux_gpio_state* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct gpio_descs* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_descs*) ; 
 int /*<<< orphan*/  mdio_mux_gpio_switch_fn ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mdio_mux_gpio_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mdio_mux_gpio_state *s;
	struct gpio_descs *gpios;
	int r;

	gpios = FUNC3(&pdev->dev, NULL, GPIOD_OUT_LOW);
	if (FUNC0(gpios))
		return FUNC1(gpios);

	s = FUNC2(&pdev->dev, sizeof(*s), GFP_KERNEL);
	if (!s) {
		FUNC4(gpios);
		return -ENOMEM;
	}

	s->gpios = gpios;

	r = FUNC5(&pdev->dev, pdev->dev.of_node,
			  mdio_mux_gpio_switch_fn, &s->mux_handle, s, NULL);

	if (r != 0) {
		FUNC4(s->gpios);
		return r;
	}

	pdev->dev.platform_data = s;
	return 0;
}