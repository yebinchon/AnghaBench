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
struct bnx2 {int /*<<< orphan*/  dev; scalar_t__ link_up; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct bnx2* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int
FUNC11(struct net_device *dev)
{
	struct bnx2 *bp = FUNC8(dev);

	FUNC1(bp);
	FUNC5(bp);
	FUNC10(dev);
	FUNC7(&bp->timer);
	FUNC6(bp);
	FUNC2(bp);
	FUNC4(bp);
	FUNC3(bp);
	FUNC0(bp);
	bp->link_up = 0;
	FUNC9(bp->dev);
	return 0;
}