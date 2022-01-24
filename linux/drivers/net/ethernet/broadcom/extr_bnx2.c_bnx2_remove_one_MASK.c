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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int /*<<< orphan*/  temp_stats_blk; int /*<<< orphan*/  regview; int /*<<< orphan*/  pdev; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int BNX2_FLAG_AER_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bnx2* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void
FUNC13(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC9(pdev);
	struct bnx2 *bp = FUNC6(dev);

	FUNC12(dev);

	FUNC3(&bp->timer);
	FUNC2(&bp->reset_task);

	FUNC10(bp->pdev, bp->regview);

	FUNC0(dev);
	FUNC5(bp->temp_stats_blk);

	if (bp->flags & BNX2_FLAG_AER_ENABLED) {
		FUNC8(pdev);
		bp->flags &= ~BNX2_FLAG_AER_ENABLED;
	}

	FUNC1(bp);

	FUNC4(dev);

	FUNC11(pdev);
	FUNC7(pdev);
}