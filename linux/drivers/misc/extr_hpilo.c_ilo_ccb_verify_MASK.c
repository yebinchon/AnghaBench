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
struct ilo_hwinfo {TYPE_1__* ilo_dev; } ;
struct ccb {int dummy; } ;
struct ccb_data {struct ccb driver_ccb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int MAX_WAIT ; 
 int /*<<< orphan*/  SENDQ ; 
 int /*<<< orphan*/  WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb*) ; 
 scalar_t__ FUNC2 (struct ilo_hwinfo*,struct ccb*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ilo_hwinfo*,struct ccb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ilo_hwinfo *hw, struct ccb_data *data)
{
	int pkt_id, i;
	struct ccb *driver_ccb = &data->driver_ccb;

	/* make sure iLO is really handling requests */
	for (i = MAX_WAIT; i > 0; i--) {
		if (FUNC2(hw, driver_ccb, SENDQ, &pkt_id, NULL, NULL))
			break;
		FUNC4(WAIT_TIME);
	}

	if (i == 0) {
		FUNC0(&hw->ilo_dev->dev, "Open could not dequeue a packet\n");
		return -EBUSY;
	}

	FUNC3(hw, driver_ccb, SENDQ, pkt_id, 0);
	FUNC1(driver_ccb);
	return 0;
}