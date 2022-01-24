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
struct xgbe_prv_data {int /*<<< orphan*/  restart_work; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct xgbe_prv_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC0(netdev);

	FUNC1(netdev, "tx timeout, device restarting\n");
	FUNC2(&pdata->restart_work);
}