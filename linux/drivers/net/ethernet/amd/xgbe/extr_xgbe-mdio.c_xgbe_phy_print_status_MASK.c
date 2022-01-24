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
struct TYPE_2__ {scalar_t__ duplex; int /*<<< orphan*/  speed; scalar_t__ link; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; TYPE_1__ phy; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	if (pdata->phy.link)
		FUNC0(pdata->netdev,
			    "Link is Up - %s/%s - flow control %s\n",
			    FUNC2(pdata->phy.speed),
			    pdata->phy.duplex == DUPLEX_FULL ? "Full" : "Half",
			    FUNC1(pdata));
	else
		FUNC0(pdata->netdev, "Link is Down\n");
}