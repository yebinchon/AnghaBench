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
struct bnx2 {int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 struct bnx2* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	struct bnx2 *bp = FUNC3(dev);

	FUNC0(bp);
	FUNC2(bp);
	FUNC1(bp);

	/* This allows the netif to be shutdown gracefully before resetting */
	FUNC4(&bp->reset_task);
}