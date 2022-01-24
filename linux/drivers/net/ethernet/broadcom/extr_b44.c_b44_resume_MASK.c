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
struct ssb_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct b44 {int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*) ; 
 int /*<<< orphan*/  b44_interrupt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct b44* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC16 (struct ssb_device*) ; 

__attribute__((used)) static int FUNC17(struct ssb_device *sdev)
{
	struct net_device *dev = FUNC16(sdev);
	struct b44 *bp = FUNC8(dev);
	int rc = 0;

	rc = FUNC15(sdev->bus, 0);
	if (rc) {
		FUNC5(sdev->dev,
			"Failed to powerup the bus\n");
		return rc;
	}

	if (!FUNC10(dev))
		return 0;

	FUNC13(&bp->lock);
	FUNC4(bp);
	FUNC3(bp, B44_FULL_RESET);
	FUNC14(&bp->lock);

	/*
	 * As a shared interrupt, the handler can be called immediately. To be
	 * able to check the interrupt status the hardware must already be
	 * powered back on (b44_init_hw).
	 */
	rc = FUNC12(dev->irq, b44_interrupt, IRQF_SHARED, dev->name, dev);
	if (rc) {
		FUNC7(dev, "request_irq failed\n");
		FUNC13(&bp->lock);
		FUNC2(bp);
		FUNC1(bp);
		FUNC14(&bp->lock);
		return rc;
	}

	FUNC9(bp->dev);

	FUNC0(bp);
	FUNC11(dev);

	FUNC6(&bp->timer, jiffies + 1);

	return 0;
}