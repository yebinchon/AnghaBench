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
struct lan9303 {int reset_duration; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_gpio; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct lan9303 *chip,
				     struct device_node *np)
{
	chip->reset_gpio = FUNC3(chip->dev, "reset",
						   GPIOD_OUT_LOW);
	if (FUNC0(chip->reset_gpio))
		return FUNC1(chip->reset_gpio);

	if (!chip->reset_gpio) {
		FUNC2(chip->dev, "No reset GPIO defined\n");
		return 0;
	}

	chip->reset_duration = 200;

	if (np) {
		FUNC4(np, "reset-duration",
				     &chip->reset_duration);
	} else {
		FUNC2(chip->dev, "reset duration defaults to 200 ms\n");
	}

	/* A sane reset duration should not be longer than 1s */
	if (chip->reset_duration > 1000)
		chip->reset_duration = 1000;

	return 0;
}