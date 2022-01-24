#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sensor_open_extended {int self_calibration_mode; int i2c_sclk; scalar_t__ fast_open_sensor; scalar_t__ mipi_speed; scalar_t__ mclk; scalar_t__ mipi_lane_num; scalar_t__ actuator_type; } ;
struct fimc_is_sensor {TYPE_2__* drvdata; int /*<<< orphan*/  i2c_bus; } ;
struct fimc_is {int /*<<< orphan*/  is_dma_p_region; int /*<<< orphan*/  sensor_index; TYPE_1__* is_p_region; } ;
struct TYPE_4__ {int /*<<< orphan*/  open_timeout; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIC_OPEN_SENSOR ; 
 int /*<<< orphan*/  IS_ST_OPEN_SENSOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct fimc_is*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct fimc_is *is,
				  struct fimc_is_sensor *sensor)
{
	struct sensor_open_extended *soe = (void *)&is->is_p_region->shared;

	FUNC2(is);

	soe->self_calibration_mode = 1;
	soe->actuator_type = 0;
	soe->mipi_lane_num = 0;
	soe->mclk = 0;
	soe->mipi_speed	= 0;
	soe->fast_open_sensor = 0;
	soe->i2c_sclk = 88000000;

	FUNC3();

	/*
	 * Some user space use cases hang up here without this
	 * empirically chosen delay.
	 */
	FUNC6(100);

	FUNC5(HIC_OPEN_SENSOR, is, FUNC0(0));
	FUNC5(is->sensor_index, is, FUNC0(1));
	FUNC5(sensor->drvdata->id, is, FUNC0(2));
	FUNC5(sensor->i2c_bus, is, FUNC0(3));
	FUNC5(is->is_dma_p_region, is, FUNC0(4));

	FUNC1(is);

	return FUNC4(is, IS_ST_OPEN_SENSOR, 1,
				  sensor->drvdata->open_timeout);
}