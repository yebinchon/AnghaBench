#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  phydev; } ;
struct fec_enet_private {int quirks; TYPE_1__* pdev; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FEC_QUIRK_ERR006687 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC6(ndev);

	FUNC10(ndev->phydev);

	if (FUNC7(ndev)) {
		FUNC5(&fep->napi);
		FUNC8(ndev);
		FUNC3(ndev);
	}

	FUNC9(ndev->phydev);

	if (fep->quirks & FEC_QUIRK_ERR006687)
		FUNC4();

	FUNC2(ndev);

	FUNC0(ndev, false);
	FUNC11(&fep->pdev->dev);
	FUNC12(&fep->pdev->dev);
	FUNC13(&fep->pdev->dev);

	FUNC1(ndev);

	return 0;
}