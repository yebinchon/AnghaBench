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
struct ql3_adapter {int /*<<< orphan*/  tx_timeout_work; int /*<<< orphan*/  workqueue; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct ql3_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct ql3_adapter *qdev = FUNC1(ndev);

	FUNC0(ndev, "Resetting...\n");
	/*
	 * Stop the queues, we've got a problem.
	 */
	FUNC2(ndev);

	/*
	 * Wake up the worker to process this event.
	 */
	FUNC3(qdev->workqueue, &qdev->tx_timeout_work, 0);
}