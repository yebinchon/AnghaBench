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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct smsc9420_pdata {int /*<<< orphan*/  mii_bus; TYPE_1__* pdev; int /*<<< orphan*/  napi; int /*<<< orphan*/  int_lock; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INT_CFG ; 
 int INT_CFG_IRQ_EN_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct smsc9420_pdata* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct smsc9420_pdata*) ; 
 int FUNC12 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC15 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC5(dev);
	u32 int_cfg;
	ulong flags;

	FUNC0(!pd);
	FUNC0(!dev->phydev);

	/* disable master interrupt */
	FUNC16(&pd->int_lock, flags);
	int_cfg = FUNC12(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
	FUNC13(pd, INT_CFG, int_cfg);
	FUNC17(&pd->int_lock, flags);

	FUNC6(dev);
	FUNC4(&pd->napi);

	FUNC15(pd);
	FUNC11(pd);

	FUNC14(pd);
	FUNC10(pd);

	FUNC1(pd->pdev->irq, pd);

	FUNC9(pd);

	FUNC8(dev->phydev);

	FUNC7(dev->phydev);
	FUNC3(pd->mii_bus);
	FUNC2(pd->mii_bus);

	return 0;
}