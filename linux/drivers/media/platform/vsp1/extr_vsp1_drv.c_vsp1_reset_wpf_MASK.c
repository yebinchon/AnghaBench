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
typedef  int u32 ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VI6_SRESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VI6_STATUS ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct vsp1_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct vsp1_device *vsp1, unsigned int index)
{
	unsigned int timeout;
	u32 status;

	status = FUNC4(vsp1, VI6_STATUS);
	if (!(status & FUNC1(index)))
		return 0;

	FUNC5(vsp1, VI6_SRESET, FUNC0(index));
	for (timeout = 10; timeout > 0; --timeout) {
		status = FUNC4(vsp1, VI6_STATUS);
		if (!(status & FUNC1(index)))
			break;

		FUNC3(1000, 2000);
	}

	if (!timeout) {
		FUNC2(vsp1->dev, "failed to reset wpf.%u\n", index);
		return -ETIMEDOUT;
	}

	return 0;
}