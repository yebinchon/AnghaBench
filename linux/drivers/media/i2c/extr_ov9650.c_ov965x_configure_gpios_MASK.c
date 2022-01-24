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
struct ov965x {void** gpios; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 size_t GPIO_PWDN ; 
 size_t GPIO_RST ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ov965x *ov965x)
{
	struct device *dev = FUNC4(ov965x->regmap);

	ov965x->gpios[GPIO_PWDN] = FUNC3(dev, "powerdown",
							GPIOD_OUT_HIGH);
	if (FUNC0(ov965x->gpios[GPIO_PWDN])) {
		FUNC2(dev, "can't get %s GPIO\n", "powerdown");
		return FUNC1(ov965x->gpios[GPIO_PWDN]);
	}

	ov965x->gpios[GPIO_RST] = FUNC3(dev, "reset",
							GPIOD_OUT_HIGH);
	if (FUNC0(ov965x->gpios[GPIO_RST])) {
		FUNC2(dev, "can't get %s GPIO\n", "reset");
		return FUNC1(ov965x->gpios[GPIO_RST]);
	}

	return 0;
}