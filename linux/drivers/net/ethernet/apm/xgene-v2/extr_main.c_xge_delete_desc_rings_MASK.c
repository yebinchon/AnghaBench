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
struct xge_pdata {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct xge_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC0(ndev);

	FUNC4(ndev);
	FUNC1(ndev, pdata->tx_ring);

	FUNC3(ndev, 64);
	FUNC2(ndev);
	FUNC1(ndev, pdata->rx_ring);
}