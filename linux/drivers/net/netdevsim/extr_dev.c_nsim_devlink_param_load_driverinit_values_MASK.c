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
union devlink_param_value {int /*<<< orphan*/  vbool; int /*<<< orphan*/  vu32; } ;
struct nsim_dev {int /*<<< orphan*/  test1; int /*<<< orphan*/  max_macs; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PARAM_GENERIC_ID_MAX_MACS ; 
 int /*<<< orphan*/  NSIM_DEVLINK_PARAM_ID_TEST1 ; 
 int FUNC0 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value*) ; 
 struct nsim_dev* FUNC1 (struct devlink*) ; 

__attribute__((used)) static void FUNC2(struct devlink *devlink)
{
	struct nsim_dev *nsim_dev = FUNC1(devlink);
	union devlink_param_value saved_value;
	int err;

	err = FUNC0(devlink,
						 DEVLINK_PARAM_GENERIC_ID_MAX_MACS,
						 &saved_value);
	if (!err)
		nsim_dev->max_macs = saved_value.vu32;
	err = FUNC0(devlink,
						 NSIM_DEVLINK_PARAM_ID_TEST1,
						 &saved_value);
	if (!err)
		nsim_dev->test1 = saved_value.vbool;
}