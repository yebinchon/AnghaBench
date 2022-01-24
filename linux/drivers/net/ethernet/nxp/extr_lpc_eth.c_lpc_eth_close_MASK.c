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
struct netdata_local {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  net_base; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct net_device {scalar_t__ phydev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct netdata_local* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *ndev)
{
	unsigned long flags;
	struct netdata_local *pldat = FUNC6(ndev);

	if (FUNC8(pldat))
		FUNC4(&pldat->pdev->dev, "shutting down %s\n", ndev->name);

	FUNC5(&pldat->napi);
	FUNC9(ndev);

	if (ndev->phydev)
		FUNC10(ndev->phydev);

	FUNC11(&pldat->lock, flags);
	FUNC2(pldat);
	FUNC7(ndev);
	FUNC13(0, FUNC0(pldat->net_base));
	FUNC13(0, FUNC1(pldat->net_base));
	FUNC12(&pldat->lock, flags);

	FUNC3(pldat->clk);

	return 0;
}