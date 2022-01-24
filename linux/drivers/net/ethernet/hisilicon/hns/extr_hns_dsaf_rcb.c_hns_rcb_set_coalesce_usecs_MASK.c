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
struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ HNS_RCB_MAX_COALESCED_USECS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct rcb_common_cb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rcb_common_cb*,scalar_t__,scalar_t__) ; 

int FUNC5(
	struct rcb_common_cb *rcb_common, u32 port_idx, u32 timeout)
{
	u32 old_timeout = FUNC3(rcb_common, port_idx);

	if (timeout == old_timeout)
		return 0;

	if (FUNC0(rcb_common->dsaf_dev->dsaf_ver)) {
		if (!FUNC1(rcb_common->dsaf_dev)) {
			FUNC2(rcb_common->dsaf_dev->dev,
				"error: not support coalesce_usecs setting!\n");
			return -EINVAL;
		}
	}
	if (timeout > HNS_RCB_MAX_COALESCED_USECS || timeout == 0) {
		FUNC2(rcb_common->dsaf_dev->dev,
			"error: coalesce_usecs setting supports 1~1023us\n");
		return -EINVAL;
	}
	FUNC4(rcb_common, port_idx, timeout);
	return 0;
}