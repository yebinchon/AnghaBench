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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ ptp_clock; int /*<<< orphan*/  time_keep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC2(pdev);
	struct fec_enet_private *fep = FUNC1(ndev);

	FUNC0(&fep->time_keep);
	if (fep->ptp_clock)
		FUNC3(fep->ptp_clock);
}