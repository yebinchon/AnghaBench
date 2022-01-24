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
struct device {int dummy; } ;
struct csis_state {void** clock; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int NUM_CSIS_CLOCKS ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/ * csi_clock_name ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csis_state*) ; 

__attribute__((used)) static int FUNC8(struct csis_state *state)
{
	struct device *dev = &state->pdev->dev;
	int i, ret;

	for (i = 0; i < NUM_CSIS_CLOCKS; i++)
		state->clock[i] = FUNC0(-EINVAL);

	for (i = 0; i < NUM_CSIS_CLOCKS; i++) {
		state->clock[i] = FUNC3(dev, csi_clock_name[i]);
		if (FUNC1(state->clock[i])) {
			ret = FUNC2(state->clock[i]);
			goto err;
		}
		ret = FUNC4(state->clock[i]);
		if (ret < 0) {
			FUNC5(state->clock[i]);
			state->clock[i] = FUNC0(-EINVAL);
			goto err;
		}
	}
	return 0;
err:
	FUNC7(state);
	FUNC6(dev, "failed to get clock: %s\n", csi_clock_name[i]);
	return ret;
}