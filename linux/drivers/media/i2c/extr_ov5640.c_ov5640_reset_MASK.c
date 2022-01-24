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
struct ov5640_dev {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ov5640_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct ov5640_dev *sensor)
{
	if (!sensor->reset_gpio)
		return;

	FUNC0(sensor->reset_gpio, 0);

	/* camera power cycle */
	FUNC1(sensor, false);
	FUNC2(5000, 10000);
	FUNC1(sensor, true);
	FUNC2(5000, 10000);

	FUNC0(sensor->reset_gpio, 1);
	FUNC2(1000, 2000);

	FUNC0(sensor->reset_gpio, 0);
	FUNC2(20000, 25000);
}