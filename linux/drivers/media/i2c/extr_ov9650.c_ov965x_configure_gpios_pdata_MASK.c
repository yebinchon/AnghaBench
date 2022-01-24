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
struct ov965x {int /*<<< orphan*/ * gpios; int /*<<< orphan*/  sd; int /*<<< orphan*/  regmap; } ;
struct ov9650_platform_data {int gpio_pwdn; int gpio_reset; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 size_t GPIO_PWDN ; 
 size_t GPIO_RST ; 
 int NUM_GPIOS ; 
 int /*<<< orphan*/  debug ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC8(struct ov965x *ov965x,
				const struct ov9650_platform_data *pdata)
{
	int ret, i;
	int gpios[NUM_GPIOS];
	struct device *dev = FUNC6(ov965x->regmap);

	gpios[GPIO_PWDN] = pdata->gpio_pwdn;
	gpios[GPIO_RST]  = pdata->gpio_reset;

	for (i = 0; i < FUNC0(ov965x->gpios); i++) {
		int gpio = gpios[i];

		if (!FUNC3(gpio))
			continue;
		ret = FUNC1(dev, gpio,
					    GPIOF_OUT_INIT_HIGH, "OV965X");
		if (ret < 0)
			return ret;
		FUNC7(1, debug, &ov965x->sd, "set gpio %d to 1\n", gpio);

		FUNC4(gpio, 1);
		FUNC2(gpio, 0);
		ov965x->gpios[i] = FUNC5(gpio);
	}

	return 0;
}