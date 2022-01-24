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
typedef  int u32 ;
struct enetc_si {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct enetc_msg_swbd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENETC_VSIMSGSR ; 
 int ENETC_VSIMSGSR_MB ; 
 int ENETC_VSIMSGSR_MS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct enetc_msg_swbd*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct enetc_si *si, struct enetc_msg_swbd *msg)
{
	int timeout = 100;
	u32 vsimsgsr;

	FUNC2(&si->hw, msg);

	do {
		vsimsgsr = FUNC3(&si->hw, ENETC_VSIMSGSR);
		if (!(vsimsgsr & ENETC_VSIMSGSR_MB))
			break;

		FUNC4(1000, 2000);
	} while (--timeout);

	if (!timeout)
		return -ETIMEDOUT;

	/* check for message delivery error */
	if (vsimsgsr & ENETC_VSIMSGSR_MS) {
		FUNC1(&si->pdev->dev, "VSI command execute error: %d\n",
			FUNC0(vsimsgsr));
		return -EIO;
	}

	return 0;
}