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
struct fs_enet_private {int /*<<< orphan*/  interrupt; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; TYPE_1__* ops; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fs_enet_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC3(dev);
	unsigned long flags;

	FUNC5(dev);
	FUNC4(dev);
	FUNC2(&fep->napi);
	FUNC0(&fep->timeout_work);
	FUNC7(dev->phydev);

	FUNC9(&fep->lock, flags);
	FUNC8(&fep->tx_lock);
	(*fep->ops->stop)(dev);
	FUNC10(&fep->tx_lock);
	FUNC11(&fep->lock, flags);

	/* release any irqs */
	FUNC6(dev->phydev);
	FUNC1(fep->interrupt, dev);

	return 0;
}