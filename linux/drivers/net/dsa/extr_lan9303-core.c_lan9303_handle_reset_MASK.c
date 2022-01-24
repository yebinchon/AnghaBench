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
struct lan9303 {scalar_t__ reset_duration; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct lan9303 *chip)
{
	if (!chip->reset_gpio)
		return;

	if (chip->reset_duration != 0)
		FUNC1(chip->reset_duration);

	/* release (deassert) reset and activate the device */
	FUNC0(chip->reset_gpio, 0);
}