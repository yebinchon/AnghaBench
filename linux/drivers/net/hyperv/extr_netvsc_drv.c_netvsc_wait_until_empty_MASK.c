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
typedef  scalar_t__ u32 ;
struct vmbus_channel {int /*<<< orphan*/  outbound; int /*<<< orphan*/  inbound; } ;
struct netvsc_device {int num_chn; TYPE_1__* chan_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; struct vmbus_channel* channel; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned int RETRY_MAX ; 
 int /*<<< orphan*/  RETRY_US_HI ; 
 int /*<<< orphan*/  RETRY_US_LO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct netvsc_device *nvdev)
{
	unsigned int retry = 0;
	int i;

	/* Ensure pending bytes in ring are read */
	for (;;) {
		u32 aread = 0;

		for (i = 0; i < nvdev->num_chn; i++) {
			struct vmbus_channel *chn
				= nvdev->chan_table[i].channel;

			if (!chn)
				continue;

			/* make sure receive not running now */
			FUNC1(&nvdev->chan_table[i].napi);

			aread = FUNC0(&chn->inbound);
			if (aread)
				break;

			aread = FUNC0(&chn->outbound);
			if (aread)
				break;
		}

		if (aread == 0)
			return 0;

		if (++retry > RETRY_MAX)
			return -ETIMEDOUT;

		FUNC2(RETRY_US_LO, RETRY_US_HI);
	}
}