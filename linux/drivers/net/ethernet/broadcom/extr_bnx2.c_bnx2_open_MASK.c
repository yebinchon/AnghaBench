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
struct statistics_block {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  temp_stats_blk; int /*<<< orphan*/  intr_sem; scalar_t__ current_interval; } ;

/* Variables and functions */
 int BNX2_FLAG_USING_MSI ; 
 int BNX2_FLAG_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2*) ; 
 int FUNC9 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2*) ; 
 int FUNC13 (struct bnx2*) ; 
 int FUNC14 (struct bnx2*) ; 
 int FUNC15 (struct bnx2*,int) ; 
 scalar_t__ FUNC16 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int disable_msi ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*) ; 
 struct bnx2* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 

__attribute__((used)) static int
FUNC25(struct net_device *dev)
{
	struct bnx2 *bp = FUNC21(dev);
	int rc;

	rc = FUNC13(bp);
	if (rc < 0)
		goto out;

	FUNC23(dev);

	FUNC3(bp);

	rc = FUNC15(bp, disable_msi);
	if (rc)
		goto open_err;
	FUNC8(bp);
	FUNC11(bp);
	rc = FUNC1(bp);
	if (rc)
		goto open_err;

	rc = FUNC14(bp);
	if (rc)
		goto open_err;

	rc = FUNC9(bp, 1);
	if (rc)
		goto open_err;

	FUNC19(&bp->timer, jiffies + bp->current_interval);

	FUNC0(&bp->intr_sem, 0);

	FUNC18(bp->temp_stats_blk, 0, sizeof(struct statistics_block));

	FUNC4(bp);

	if (bp->flags & BNX2_FLAG_USING_MSI) {
		/* Test MSI to make sure it is working
		 * If MSI test fails, go back to INTx mode
		 */
		if (FUNC16(bp) != 0) {
			FUNC22(bp->dev, "No interrupt was generated using MSI, switching to INTx mode. Please report this failure to the PCI maintainer and include system chipset information.\n");

			FUNC3(bp);
			FUNC5(bp);

			FUNC15(bp, 1);

			rc = FUNC9(bp, 0);

			if (!rc)
				rc = FUNC14(bp);

			if (rc) {
				FUNC17(&bp->timer);
				goto open_err;
			}
			FUNC4(bp);
		}
	}
	if (bp->flags & BNX2_FLAG_USING_MSI)
		FUNC20(dev, "using MSI\n");
	else if (bp->flags & BNX2_FLAG_USING_MSIX)
		FUNC20(dev, "using MSIX\n");

	FUNC24(dev);
out:
	return rc;

open_err:
	FUNC10(bp);
	FUNC7(bp);
	FUNC5(bp);
	FUNC6(bp);
	FUNC2(bp);
	FUNC12(bp);
	goto out;
}