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
struct s5k6a3 {int /*<<< orphan*/  dev; TYPE_1__* supplies; int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  clock; int /*<<< orphan*/  clock_frequency; } ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int S5K6A3_NUM_SUPPLIES ; 
 int S5K6A3_SUPP_VDDA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct s5k6a3 *sensor)
{
	int i = S5K6A3_SUPP_VDDA;
	int ret;

	ret = FUNC1(sensor->clock, sensor->clock_frequency);
	if (ret < 0)
		return ret;

	ret = FUNC4(sensor->dev);
	if (ret < 0)
		return ret;

	ret = FUNC7(sensor->supplies[i].consumer);
	if (ret < 0)
		goto error_rpm_put;

	ret = FUNC0(sensor->clock);
	if (ret < 0)
		goto error_reg_dis;

	for (i++; i < S5K6A3_NUM_SUPPLIES; i++) {
		ret = FUNC7(sensor->supplies[i].consumer);
		if (ret < 0)
			goto error_reg_dis;
	}

	FUNC2(sensor->gpio_reset, 1);
	FUNC8(600, 800);
	FUNC2(sensor->gpio_reset, 0);
	FUNC8(600, 800);
	FUNC2(sensor->gpio_reset, 1);

	/* Delay needed for the sensor initialization */
	FUNC3(20);
	return 0;

error_reg_dis:
	for (--i; i >= 0; --i)
		FUNC6(sensor->supplies[i].consumer);
error_rpm_put:
	FUNC5(sensor->dev);
	return ret;
}