#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct b44 {int flags; TYPE_1__ timer; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CHIP_RESET_PARTIAL ; 
 int B44_FLAG_EXTERNAL_PHY ; 
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*) ; 
 int /*<<< orphan*/  FUNC5 (struct b44*) ; 
 int /*<<< orphan*/  FUNC6 (struct b44*) ; 
 int /*<<< orphan*/  FUNC7 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b44*) ; 
 int /*<<< orphan*/  b44_interrupt ; 
 int /*<<< orphan*/  b44_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct b44* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct b44 *bp = FUNC11(dev);
	int err;

	err = FUNC1(bp, GFP_KERNEL);
	if (err)
		goto out;

	FUNC10(&bp->napi);

	FUNC8(bp);
	FUNC7(bp, B44_FULL_RESET);

	FUNC2(bp);

	err = FUNC14(dev->irq, b44_interrupt, IRQF_SHARED, dev->name, dev);
	if (FUNC16(err < 0)) {
		FUNC9(&bp->napi);
		FUNC3(bp, B44_CHIP_RESET_PARTIAL);
		FUNC6(bp);
		FUNC5(bp);
		goto out;
	}

	FUNC15(&bp->timer, b44_timer, 0);
	bp->timer.expires = jiffies + HZ;
	FUNC0(&bp->timer);

	FUNC4(bp);

	if (bp->flags & B44_FLAG_EXTERNAL_PHY)
		FUNC13(dev->phydev);

	FUNC12(dev);
out:
	return err;
}