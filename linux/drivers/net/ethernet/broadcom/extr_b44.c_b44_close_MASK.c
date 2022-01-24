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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; } ;
struct b44 {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int B44_FLAG_EXTERNAL_PHY ; 
 int B44_FLAG_WOL_ENABLE ; 
 int /*<<< orphan*/  B44_PARTIAL_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct b44* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct b44 *bp = FUNC8(dev);

	FUNC10(dev);

	if (bp->flags & B44_FLAG_EXTERNAL_PHY)
		FUNC11(dev->phydev);

	FUNC7(&bp->napi);

	FUNC5(&bp->timer);

	FUNC12(&bp->lock);

	FUNC2(bp);
	FUNC1(bp);
	FUNC9(dev);

	FUNC13(&bp->lock);

	FUNC6(dev->irq, dev);

	if (bp->flags & B44_FLAG_WOL_ENABLE) {
		FUNC3(bp, B44_PARTIAL_RESET);
		FUNC4(bp);
	}

	FUNC0(bp);

	return 0;
}