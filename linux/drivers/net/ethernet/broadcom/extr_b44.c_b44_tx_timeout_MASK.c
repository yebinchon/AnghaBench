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
struct b44 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct b44* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct b44 *bp = FUNC5(dev);

	FUNC4(dev, "transmit timed out, resetting\n");

	FUNC7(&bp->lock);

	FUNC1(bp);
	FUNC3(bp);
	FUNC2(bp, B44_FULL_RESET);

	FUNC8(&bp->lock);

	FUNC0(bp);

	FUNC6(dev);
}