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
struct fimc_is {size_t config_index; unsigned int sensor_index; struct chain_config* config; } ;
struct chain_config {unsigned int* p_region_index; } ;

/* Variables and functions */
 unsigned int HIC_SET_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct fimc_is*,int /*<<< orphan*/ ) ; 

int FUNC5(struct fimc_is *is)
{
	struct chain_config *config = &is->config[is->config_index];
	unsigned int param_count = FUNC1(is);

	FUNC3(is);

	FUNC4(HIC_SET_PARAMETER, is, FUNC0(0));
	FUNC4(is->sensor_index, is, FUNC0(1));
	FUNC4(is->config_index, is, FUNC0(2));

	FUNC4(param_count, is, FUNC0(3));
	FUNC4(config->p_region_index[0], is, FUNC0(4));
	FUNC4(config->p_region_index[1], is, FUNC0(5));

	FUNC2(is);
	return 0;
}