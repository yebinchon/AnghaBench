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
struct TYPE_2__ {struct gpio_desc* reset; } ;
struct madera {TYPE_1__ pdata; int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct gpio_desc* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct madera *madera)
{
	struct gpio_desc *reset;
	int ret;

	if (madera->pdata.reset)
		return 0;

	reset = FUNC4(madera->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(reset)) {
		ret = FUNC1(reset);
		if (ret != -EPROBE_DEFER)
			FUNC2(madera->dev, "Failed to request /RESET: %d\n",
				ret);
		return ret;
	}

	/*
	 * A hard reset is needed for full reset of the chip. We allow running
	 * without hard reset only because it can be useful for early
	 * prototyping and some debugging, but we need to warn it's not ideal.
	 */
	if (!reset)
		FUNC3(madera->dev,
			 "Running without reset GPIO is not recommended\n");

	madera->pdata.reset = reset;

	return 0;
}