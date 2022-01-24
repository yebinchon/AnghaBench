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
struct net_device {int dummy; } ;
struct cp_private {TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cp_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct cp_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10 (struct net_device *dev)
{
	struct cp_private *cp = FUNC4(dev);
	unsigned long flags;

	FUNC3(&cp->napi);

	FUNC6(cp, ifdown, dev, "disabling interface\n");

	FUNC8(&cp->lock, flags);

	FUNC7(dev);
	FUNC5(dev);

	FUNC1(cp);

	FUNC9(&cp->lock, flags);

	FUNC2(cp->pdev->irq, dev);

	FUNC0(cp);
	return 0;
}