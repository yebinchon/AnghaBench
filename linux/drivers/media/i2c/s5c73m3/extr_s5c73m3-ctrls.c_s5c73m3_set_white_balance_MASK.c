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
struct TYPE_4__ {TYPE_1__* auto_wb; } ;
struct s5c73m3 {TYPE_2__ ctrls; int /*<<< orphan*/  sensor_sd; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (unsigned short const**) ; 
 int /*<<< orphan*/  COMM_AWB_MODE ; 
#define  COMM_AWB_MODE_AUTO 139 
#define  COMM_AWB_MODE_CLOUDY 138 
#define  COMM_AWB_MODE_DAYLIGHT 137 
#define  COMM_AWB_MODE_FLUORESCENT1 136 
#define  COMM_AWB_MODE_FLUORESCENT2 135 
#define  COMM_AWB_MODE_INCANDESCENT 134 
 int EINVAL ; 
#define  V4L2_WHITE_BALANCE_AUTO 133 
#define  V4L2_WHITE_BALANCE_CLOUDY 132 
#define  V4L2_WHITE_BALANCE_DAYLIGHT 131 
#define  V4L2_WHITE_BALANCE_FLUORESCENT 130 
#define  V4L2_WHITE_BALANCE_FLUORESCENT_H 129 
#define  V4L2_WHITE_BALANCE_INCANDESCENT 128 
 int /*<<< orphan*/  s5c73m3_dbg ; 
 int FUNC1 (struct s5c73m3*,int /*<<< orphan*/ ,unsigned short const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct s5c73m3 *state, int val)
{
	static const unsigned short wb[][2] = {
		{ V4L2_WHITE_BALANCE_INCANDESCENT,  COMM_AWB_MODE_INCANDESCENT},
		{ V4L2_WHITE_BALANCE_FLUORESCENT,   COMM_AWB_MODE_FLUORESCENT1},
		{ V4L2_WHITE_BALANCE_FLUORESCENT_H, COMM_AWB_MODE_FLUORESCENT2},
		{ V4L2_WHITE_BALANCE_CLOUDY,        COMM_AWB_MODE_CLOUDY},
		{ V4L2_WHITE_BALANCE_DAYLIGHT,      COMM_AWB_MODE_DAYLIGHT},
		{ V4L2_WHITE_BALANCE_AUTO,          COMM_AWB_MODE_AUTO},
	};
	int i;

	for (i = 0; i < FUNC0(wb); i++) {
		if (wb[i][0] != val)
			continue;

		FUNC3(1, s5c73m3_dbg, &state->sensor_sd,
			 "Setting white balance to: %s\n",
			 FUNC2(state->ctrls.auto_wb->id)[i]);

		return FUNC1(state, COMM_AWB_MODE, wb[i][1]);
	}

	return -EINVAL;
}