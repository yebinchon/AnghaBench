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
struct s5c73m3 {int /*<<< orphan*/  sensor_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_AF_SOFTLANDING ; 
 int /*<<< orphan*/  COMM_AF_SOFTLANDING_ON ; 
 scalar_t__ COMM_AF_SOFTLANDING_RES_COMPLETE ; 
 int ETIME ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct s5c73m3*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (struct s5c73m3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC5(struct s5c73m3 *state)
{
	unsigned long start = jiffies;
	u16 af_softlanding;
	int count = 0;
	int ret;
	const char *msg;

	ret = FUNC3(state, COMM_AF_SOFTLANDING,
					COMM_AF_SOFTLANDING_ON);
	if (ret < 0) {
		FUNC4(&state->sensor_sd, "AF soft-landing failed\n");
		return ret;
	}

	for (;;) {
		ret = FUNC2(state, COMM_AF_SOFTLANDING,
							&af_softlanding);
		if (ret < 0) {
			msg = "failed";
			break;
		}
		if (af_softlanding == COMM_AF_SOFTLANDING_RES_COMPLETE) {
			msg = "succeeded";
			break;
		}
		if (++count > 100) {
			ret = -ETIME;
			msg = "timed out";
			break;
		}
		FUNC1(25);
	}

	FUNC4(&state->sensor_sd, "AF soft-landing %s after %dms\n",
		  msg, FUNC0(jiffies - start));

	return ret;
}