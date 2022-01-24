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
struct xge_pdata {int /*<<< orphan*/  phy_speed; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_1000 ; 
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);

	pdata->phy_speed = SPEED_1000;
	FUNC1(pdata);
	FUNC2(ndev);
}