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
struct fimc_is {int config_index; TYPE_1__* config; } ;
struct TYPE_2__ {unsigned long* p_region_index; } ;

/* Variables and functions */
 int PARAM_DRC_CONTROL ; 
 int PARAM_FD_CONFIG ; 
 int PARAM_FD_CONTROL ; 
 int PARAM_GLOBAL_SHOTMODE ; 
 int PARAM_ISP_CONTROL ; 
 int PARAM_SCALERC_CONTROL ; 
 int PARAM_SENSOR_FRAME_RATE ; 
 int FUNC0 (struct fimc_is*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 scalar_t__ FUNC3 (int,unsigned long*) ; 

int FUNC4(struct fimc_is *is)
{
	unsigned long *p_index;
	int i, id, ret = 0;

	id = is->config_index;
	p_index = &is->config[id].p_region_index[0];

	if (FUNC3(PARAM_GLOBAL_SHOTMODE, p_index))
		FUNC1(is);

	if (FUNC3(PARAM_SENSOR_FRAME_RATE, p_index))
		FUNC2(is);

	for (i = PARAM_ISP_CONTROL; i < PARAM_DRC_CONTROL; i++) {
		if (FUNC3(i, p_index))
			ret = FUNC0(is, i);
	}

	for (i = PARAM_DRC_CONTROL; i < PARAM_SCALERC_CONTROL; i++) {
		if (FUNC3(i, p_index))
			ret = FUNC0(is, i);
	}

	for (i = PARAM_FD_CONTROL; i <= PARAM_FD_CONFIG; i++) {
		if (FUNC3(i, p_index))
			ret = FUNC0(is, i);
	}

	return ret;
}