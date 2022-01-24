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
struct net_device {int dummy; } ;
struct macb {TYPE_1__* pdev; scalar_t__ ptp_clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEM_PTP_TIMER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct macb*) ; 
 struct macb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct net_device *ndev)
{
	struct macb *bp = FUNC2(ndev);

	if (bp->ptp_clock)
		FUNC3(bp->ptp_clock);

	FUNC1(bp);

	FUNC0(&bp->pdev->dev, "%s ptp clock unregistered.\n",
		 GEM_PTP_TIMER_NAME);
}