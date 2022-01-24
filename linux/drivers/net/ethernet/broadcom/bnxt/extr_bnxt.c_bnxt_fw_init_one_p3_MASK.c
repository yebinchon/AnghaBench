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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bnxt {int flags; int /*<<< orphan*/  wol; struct pci_dev* pdev; } ;

/* Variables and functions */
 int BNXT_FLAG_WOL_CAP ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct bnxt *bp)
{
	struct pci_dev *pdev = bp->pdev;

	FUNC4(bp);
	FUNC3(bp);

	FUNC0(bp);
	if (bp->flags & BNXT_FLAG_WOL_CAP)
		FUNC7(&pdev->dev, bp->wol);
	else
		FUNC6(&pdev->dev, false);

	FUNC2(bp, FUNC5());
	FUNC1(bp);
}