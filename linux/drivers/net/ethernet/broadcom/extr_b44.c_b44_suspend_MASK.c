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
struct ssb_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct b44 {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int B44_FLAG_WOL_ENABLE ; 
 int /*<<< orphan*/  B44_PARTIAL_RESET ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct b44* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC12 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ssb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ssb_device *sdev, pm_message_t state)
{
	struct net_device *dev = FUNC12(sdev);
	struct b44 *bp = FUNC6(dev);

	if (!FUNC9(dev))
		return 0;

	FUNC4(&bp->timer);

	FUNC10(&bp->lock);

	FUNC1(bp);
	FUNC7(bp->dev);
	FUNC8(bp->dev);
	FUNC0(bp);

	FUNC11(&bp->lock);

	FUNC5(dev->irq, dev);
	if (bp->flags & B44_FLAG_WOL_ENABLE) {
		FUNC2(bp, B44_PARTIAL_RESET);
		FUNC3(bp);
	}

	FUNC13(sdev, PCI_D3hot);
	return 0;
}