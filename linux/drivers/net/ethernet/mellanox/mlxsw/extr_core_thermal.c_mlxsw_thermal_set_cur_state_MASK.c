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
typedef  int /*<<< orphan*/  u8 ;
struct thermal_cooling_device {struct mlxsw_thermal* devdata; } ;
struct mlxsw_thermal {unsigned long* cooling_levels; int /*<<< orphan*/  core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MFSC_LEN ; 
 unsigned long MLXSW_THERMAL_MAX_STATE ; 
 unsigned long MLXSW_THERMAL_SPEED_MAX ; 
 unsigned long MLXSW_THERMAL_SPEED_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  mfsc ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_thermal*,struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static int FUNC10(struct thermal_cooling_device *cdev,
				       unsigned long state)

{
	struct mlxsw_thermal *thermal = cdev->devdata;
	struct device *dev = thermal->bus_info->dev;
	char mfsc_pl[MLXSW_REG_MFSC_LEN];
	unsigned long cur_state, i;
	int idx;
	u8 duty;
	int err;

	idx = FUNC4(thermal, cdev);
	if (idx < 0)
		return idx;

	/* Verify if this request is for changing allowed fan dynamical
	 * minimum. If it is - update cooling levels accordingly and update
	 * state, if current state is below the newly requested minimum state.
	 * For example, if current state is 5, and minimal state is to be
	 * changed from 4 to 6, thermal->cooling_levels[0 to 5] will be changed
	 * all from 4 to 6. And state 5 (thermal->cooling_levels[4]) should be
	 * overwritten.
	 */
	if (state >= MLXSW_THERMAL_SPEED_MIN &&
	    state <= MLXSW_THERMAL_SPEED_MAX) {
		state -= MLXSW_THERMAL_MAX_STATE;
		for (i = 0; i <= MLXSW_THERMAL_MAX_STATE; i++)
			thermal->cooling_levels[i] = FUNC2(state, i);

		FUNC5(mfsc_pl, idx, 0);
		err = FUNC7(thermal->core, FUNC0(mfsc), mfsc_pl);
		if (err)
			return err;

		duty = FUNC6(mfsc_pl);
		cur_state = FUNC3(duty);

		/* If current fan state is lower than requested dynamical
		 * minimum, increase fan speed up to dynamical minimum.
		 */
		if (state < cur_state)
			return 0;

		state = cur_state;
	}

	if (state > MLXSW_THERMAL_MAX_STATE)
		return -EINVAL;

	/* Normalize the state to the valid speed range. */
	state = thermal->cooling_levels[state];
	FUNC5(mfsc_pl, idx, FUNC9(state));
	err = FUNC8(thermal->core, FUNC0(mfsc), mfsc_pl);
	if (err) {
		FUNC1(dev, "Failed to write PWM duty\n");
		return err;
	}
	return 0;
}