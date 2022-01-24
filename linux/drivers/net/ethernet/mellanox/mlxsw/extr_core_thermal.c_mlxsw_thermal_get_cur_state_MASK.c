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
struct mlxsw_thermal {int /*<<< orphan*/  core; TYPE_1__* bus_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MFSC_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  mfsc ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_thermal*,struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct thermal_cooling_device *cdev,
				       unsigned long *p_state)

{
	struct mlxsw_thermal *thermal = cdev->devdata;
	struct device *dev = thermal->bus_info->dev;
	char mfsc_pl[MLXSW_REG_MFSC_LEN];
	int err, idx;
	u8 duty;

	idx = FUNC3(thermal, cdev);
	if (idx < 0)
		return idx;

	FUNC4(mfsc_pl, idx, 0);
	err = FUNC6(thermal->core, FUNC0(mfsc), mfsc_pl);
	if (err) {
		FUNC1(dev, "Failed to query PWM duty\n");
		return err;
	}

	duty = FUNC5(mfsc_pl);
	*p_state = FUNC2(duty);
	return 0;
}