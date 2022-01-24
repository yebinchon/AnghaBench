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
struct net_device {int dummy; } ;
struct cnic_eth_dev {scalar_t__ drv_state; } ;
struct bnx2x {int cnic_enabled; int /*<<< orphan*/ * cnic_kwq; int /*<<< orphan*/  cnic_mutex; int /*<<< orphan*/  cnic_ops; struct cnic_eth_dev cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bnx2x* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct bnx2x *bp = FUNC4(dev);
	struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

	FUNC2(&bp->cnic_mutex);
	cp->drv_state = 0;
	FUNC0(bp->cnic_ops, NULL);
	FUNC3(&bp->cnic_mutex);
	FUNC5();
	bp->cnic_enabled = false;
	FUNC1(bp->cnic_kwq);
	bp->cnic_kwq = NULL;

	return 0;
}