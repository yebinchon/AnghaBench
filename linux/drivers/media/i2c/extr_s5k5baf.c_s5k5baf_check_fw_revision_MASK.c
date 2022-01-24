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
typedef  scalar_t__ u16 ;
struct s5k5baf {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  REG_FW_APIVER ; 
 int /*<<< orphan*/  REG_FW_REVISION ; 
 int /*<<< orphan*/  REG_FW_SENSOR_ID ; 
 scalar_t__ S5K5BAF_FW_APIVER ; 
 int FUNC0 (struct s5k5baf*) ; 
 int FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct s5k5baf *state)
{
	u16 api_ver = 0, fw_rev = 0, s_id = 0;
	int ret;

	api_ver = FUNC1(state, REG_FW_APIVER);
	fw_rev = FUNC1(state, REG_FW_REVISION) & 0xff;
	s_id = FUNC1(state, REG_FW_SENSOR_ID);
	ret = FUNC0(state);
	if (ret < 0)
		return ret;

	FUNC3(&state->sd, "FW API=%#x, revision=%#x sensor_id=%#x\n",
		  api_ver, fw_rev, s_id);

	if (api_ver != S5K5BAF_FW_APIVER) {
		FUNC2(&state->sd, "FW API version not supported\n");
		return -ENODEV;
	}

	return 0;
}