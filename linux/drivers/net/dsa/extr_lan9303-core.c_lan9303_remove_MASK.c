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
struct lan9303 {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  ds; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lan9303*) ; 

int FUNC5(struct lan9303 *chip)
{
	int rc;

	rc = FUNC4(chip);
	if (rc != 0)
		FUNC0(chip->dev, "shutting down failed\n");

	FUNC1(chip->ds);

	/* assert reset to the whole device to prevent it from doing anything */
	FUNC2(chip->reset_gpio, 1);
	FUNC3(chip->reset_gpio);

	return 0;
}