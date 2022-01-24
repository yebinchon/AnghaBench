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
struct bnxt {int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * edev; scalar_t__ sp_event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct bnxt* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 struct net_device* FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static void FUNC20(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC18(pdev);
	struct bnxt *bp = FUNC16(dev);

	if (FUNC0(bp)) {
		FUNC13(bp);
		FUNC5(bp);
	}

	FUNC17(pdev);
	FUNC19(dev);
	FUNC12(bp);
	FUNC1(bp);
	bp->sp_event = 0;

	FUNC3(bp);
	FUNC11(bp);
	FUNC8(bp);
	FUNC9(bp);
	FUNC6(bp);
	FUNC4(bp);
	FUNC15(bp->edev);
	bp->edev = NULL;
	FUNC2(bp);
	FUNC7(bp);
	FUNC15(bp->ctx);
	bp->ctx = NULL;
	FUNC10(bp);
	FUNC14(dev);
}